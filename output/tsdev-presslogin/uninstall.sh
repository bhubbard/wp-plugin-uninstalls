#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsdevpresslogin_frist_label_text'
wp option delete 'tsdevpresslogin_second_label_text'
wp option delete 'tsdevpresslogin_login_button_text'
wp option delete 'tsdevpresslogin_logo_url'
wp option delete 'tsdevpresslogin_primary_color'
wp option delete 'tsdevpresslogin_logo'
wp option delete 'tsdevpresslogin_background_img'

