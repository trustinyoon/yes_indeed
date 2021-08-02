json.set! @user.id do
  json.extract! @user, :email, :employer, :job_ids
end
