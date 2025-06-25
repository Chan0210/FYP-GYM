# frozen_string_literal: true
class PagesController < ApplicationController

  # TODO: 加入 before_action :authenticate_user! 以保护用户页面
  def action
    @actions = Action.includes(:action_images)
  end

  def shoulder
    shoulder_part = BodyPart.find_by(name: "Shoulder")
    @actions = shoulder_part.present? ? Action.includes(:action_images).where(body_part: shoulder_part) : []
  end

  def back
    back_part = BodyPart.find_by(name: "Back")
    @actions = back_part.present? ? Action.includes(:action_images).where(body_part: back_part) : []
  end

  def arm
    arm_part = BodyPart.find_by(name: "Arm")
    @actions = arm_part.present? ? Action.includes(:action_images).where(body_part: arm_part) : []
  end
  def bbp
  end

  def bmi
  end

  def login
  end

  def calorie
  end

  def BPR
  end

  def BS
  end


  def cart
  end

  def CCP
  end

  def chest
    chest_part = BodyPart.find_by(name: "Chest")
    @actions = chest_part.present? ? Action.includes(:action_images).where(body_part: chest_part) : []
  end

  def copy
  end

  def Directory
  end

  def DS
  end



  def editoroutine
  end

  def header
  end

  def leg
    leg_part = BodyPart.find_by(name: "Leg")
    @actions = leg_part.present? ? Action.includes(:action_images).where(body_part: leg_part) : []
  end

  def M45DBE
  end

  def mainpage

  end

  def proceed
  end

  def PU
  end

  def routine
  end

  def routine_detail
  end

  def Routinechecking
  end

  def routinereview
  end

  def signup
  end

  def tracking
  end

  def work_out_history
  end

  def workout_detail
  end


end
