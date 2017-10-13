class Accounts::ConfirmationsController < Devise::ConfirmationsController

  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  def show
    @account = resource_class.confirm_by_token(params[:confirmation_token])
        if resource.errors.empty?
          resource.save
           if resource.save
           end
           set_flash_message(:notice, :confirmed) if is_navigational_format?
        else
          respond_with_navigational(resource.errors, :status => :unprocessable_entity) {render_with_scope :new }
        end
  end
  
  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
  
  
end
