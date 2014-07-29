class ItemPolicy
  attr_reader :current_user, :item

  def initialize(current_user, item)
    @current_user = current_user
    @item = item
  end

  def index?
    true
  end

  def show?
    #@current_user.admin? or @current_user == @user
    true
  end

  def new?
    @current_user and (@current_user.admin? or @current_user.editor?)
  end
  def create?
    @current_user and (@current_user.admin? or @current_user.editor?)
  end
  def edit?
    @current_user and (@current_user.admin? or @current_user.editor?)
  end

  def update?
    @current_user and (@current_user.admin? or @current_user.editor?)
  end

  def destroy?
    @current_user and (@current_user.admin? or @current_user.editor?)
  end

end
