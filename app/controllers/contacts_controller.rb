class ContactsController < ApplicationController

  def contacts
    contacts = Contact.all.order(:id)
    contactlist = []
    contacts.each do |contact|
      info = "First name: #{contact[:first_name]} | Last name: #{contact[:last_name]} | Email: #{contact[:email]} | Phone number: #{contact[:phone_number]}"
      contactlist << info
    end
    render json: {"Contacts:": contactlist}
  end

  def contact1
    contact = Contact.first
    info = "First name: #{contact[:first_name]} | Last name: #{contact[:last_name]} | Email: #{contact[:email]} | Phone number: #{contact[:phone_number]}"
    render json: {"Contact Info:": info}
  end

  def contact2
    contact = Contact.second
    info = "First name: #{contact[:first_name]} | Last name: #{contact[:last_name]} | Email: #{contact[:email]} | Phone number: #{contact[:phone_number]}"
    render json: {"Contact Info:": info}
  end

  def contact3
    contact = Contact.third
    info = "First name: #{contact[:first_name]} | Last name: #{contact[:last_name]} | Email: #{contact[:email]} | Phone number: #{contact[:phone_number]}"
    render json: {"Contact Info:": info}
  end

  def contact4
    contact = Contact.fourth
    info = "First name: #{contact[:first_name]} | Last name: #{contact[:last_name]} | Email: #{contact[:email]} | Phone number: #{contact[:phone_number]}"
    render json: {"Contact Info:": info}
  end

end
