def index
  @user_data= User.where(payment_result: 1).group("date(created_at)").count
end