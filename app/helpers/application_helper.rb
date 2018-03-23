module ApplicationHelper
    def flash_class(type)
        { success: 'alert-success',
          error:   'alert-danger',
          alert:   'alert-warning',
          notice:  'alert-info'
        }[type.to_sym] || type.to_s
    end
end
