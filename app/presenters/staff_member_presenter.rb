class StaffMemberPresenter < ModelPresenter
  delegate :suspended?, to: :object

  # 職員の停止フラグのOn／Offを表現する記号を返す。
  # On: BALLOT BOX WITH CHECK (U+2611)
  # Off:BALLOT BOX (U+2610)
  def suspended_mark
    suspended? ? raw("&#x2611") : raw("&#x2610")
  end 

  def full_name
    object.family_name + " " + object.given_name
  end

  def full_name_kana
    object.family_name_kana + " " + object.given_name_kana
  end

  def full_name_block(name1, name2, label_text, options = {} )
    markup(:div, class: "input-block") do |m|
      m << decorated_label(name1, label_text, options)
      m << text_field(name1, options)
      m << text_field(name2, options)
      m << errors_messages_for(name1)
      m << errors_messages_for(name2)
    end
  end
end