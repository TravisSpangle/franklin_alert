class Notifier
  def self.alert
    Gmail.connect( Config[:alert_username], Config[:alert_pword]) do |gmail|
      gmail.deliver do
        to Config[:alert_number]
        subject "BRISKET ALERT"
        text_part do
          body Config[:brisket_url]
        end
      end
    end
  end
end
