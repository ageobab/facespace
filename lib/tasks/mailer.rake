namespace :mailer do
  desc "email all users"
  task mailer: :environment do
    User.all.each do |user|
      UserMailer.update_info(user).deliver
    end
  end
end
