#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simppono_setcookieexpire'
wp option delete 'simppono_enabled'
wp option delete 'simppono_background_color'
wp option delete 'simppono_text_color'
wp option delete 'simppono_heading'
wp option delete 'simppono_description'
wp option delete 'simppono_cta_button'
wp option delete 'simppono_cta_button_link'
wp option delete 'simppono_cta_button_bg_color'
wp option delete 'simppono_cta_button_text_color'
wp option delete 'simppono_image_upload'
wp option delete 'simppono_select_option'
wp option delete 'simppono_popup_width'

