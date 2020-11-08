class Email < MailForm::Base

    attribute :name,      :validate => true
    attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :message
  
    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
    def headers
      {
        :subject => "Wiadomość wysłana przez formularz kontakowowy (RoR).",
        :to => "kontakt@przemyslawprzewoznik.pl",
        :from => %("#{name}" <#{email}>)
      }
    end
end
