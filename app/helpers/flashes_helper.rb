module FlashesHelper
  FLASH_CLASSES = {:notice => "success", :warning => "warning", :alert => "danger"}.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_sym
  end

  def user_facing_flashes
    flash.to_hash.slice "alert", "notice", "warning"
  end
end
