
puts "🧹 Cleaning up old data..."

# 先删除依赖项（依赖多的先删）
WorkoutAction.delete_all
Workout.delete_all
RoutineAction.delete_all
Routine.delete_all
CartItem.delete_all
Cart.delete_all
ActionDescription.delete_all
ActionImage.delete_all
Action.delete_all
BodyPart.delete_all


puts "✅ Old data cleaned."

puts "🌱 Seeding database..."
# --------------------------------------------------
# Body Parts
# --------------------------------------------------
chest    = BodyPart.find_or_create_by!(name: "Chest")    { |bp| bp.image_url = "chest.webp"    }
back     = BodyPart.find_or_create_by!(name: "Back")     { |bp| bp.image_url = "back.webp"     }
arm      = BodyPart.find_or_create_by!(name: "Arm")      { |bp| bp.image_url = "arm.webp"      }
leg      = BodyPart.find_or_create_by!(name: "Leg")      { |bp| bp.image_url = "leg.png"       }
shoulder = BodyPart.find_or_create_by!(name: "Shoulder") { |bp| bp.image_url = "shoulder.webp" }

puts "✅ Body parts seeded."

# --------------------------------------------------
# Actions  (with images & multi-paragraph descriptions)
# --------------------------------------------------
actions_data = [
  {
    name:  "Barbell Bench Press",
    descs: [
      "A leg exercise using a barbell that targets your quadriceps and glutes.",
      "Keep your back straight and lower until thighs are parallel to the floor."
    ],
    cals:  8, reps: 10, sets: 3,
    body:  leg,
    image: "barbell_bench_press.webp"
  },
  {
    name:  "Machine Pec Fly",
    descs: [
      "Machine-based fly focusing on your chest muscles.",
      "Adjust seat so handles are at chest height; squeeze slowly."
    ],
    cals:  7, reps: 12, sets: 3,
    body:  arm,
    image: "barbell_bench_press.webp"
  },
  {
    name:  "Incline Bench Press",
    descs: [
      "Chest incline barbell press exercise targeting upper pectorals.",
      "Set bench at 30–45°; lower bar to upper chest and press back up."
    ],
    cals:  9, reps: 10, sets: 3,
    body:  chest,
    image: "barbell_bench_press.webp"
  },
  {
    name:  "Cable Crossover",
    descs: [
      "Isolated shoulder cable exercise for deltoids.",
      "Maintain slight bend in elbows; cross hands in front for full contraction."
    ],
    cals:  6, reps: 12, sets: 4,
    body:  shoulder,
    image: "barbell_bench_press.webp"
  },
  {
    name:  "Back Crossover",
    descs: [
      "Isolated back cable exercise focusing on rear delts and upper back.",
      "Pull handles outward in a reverse-fly motion, squeezing shoulder blades."
    ],
    cals:  6, reps: 12, sets: 4,
    body:  back,
    image: "barbell_bench_press.webp"
  }
]

actions_data.each do |d|
  # 1) 创建 / 更新 Action 本体
  action = Action.find_or_create_by!(name: d[:name]) do |a|
    a.calories_per_reps = d[:cals]
    a.reps_of_action    = d[:reps]
    a.set_of_action     = d[:sets]
    a.body_part         = d[:body]
  end

  # 2) 默认图片（position = 1）
  ActionImage.find_or_create_by!(action: action, position: 1) do |img|
    img.media_url  = d[:image]
    img.media_type = "image"
  end

  # 3) 多段描述
  d[:descs].each_with_index do |paragraph, idx|
    ActionDescription.find_or_create_by!(action: action, position: idx + 1) do |desc|
      desc.content = paragraph
    end
  end

  puts "✅ Seeded: #{action.name}"
end

puts "🌟 All done!"




puts "👤 Creating users..."

User.create!(
  username: "admin",
  email: "ngjiayi193@gmail.com",
  password: "admin123",
  password_confirmation: "admin123",
  is_admin: true
)

User.create!(
  username: "john_doe",
  email: "1221205848@student.mmu.edu.my",
  password: "password",
  password_confirmation: "password",
  is_admin: false
)

puts "✅ Users created."
puts "🌟 All done!"