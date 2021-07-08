class KcalsController < ApplicationController
  def index
    
  end
  
  def new
    @kcal = Kcal.new
  end
  
  def create
    @kcal =Kcal.new(kcal_params)
    if  @kcal.save
      puts '保存に成功しました'
    else
      puts '保存に失敗しました'
    end
    redirect_to @kcal
  end
  
  def show
    @kcal = Kcal.find(params[:id])
    @weight1 = @kcal[:weight1]
    @height1 = @kcal[:height1]
    @age1 = @kcal[:age1]
    #@bmr1 = @kcal.bmr1_keisan
    #@tdee1 = @bmr1*1.3
  end
  
  
 private
  
  def kcal_params
      params.require(:kcal).permit(:weight1,:height1,:age1)
  end
end
