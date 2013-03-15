class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new(parent_id: params[:parent_id])
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to admin_categories_path, notice: '分类创建成功.'
    else
      render action: 'new'
    end
  end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path, notice: '分类修改成功.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :parent, :parent_id)
    end
end
