#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpclp_login_image'
wp option delete 'mpclp_login_image_link'
wp option delete 'mpclp_login_image_height'
wp option delete 'mpclp_login_background'
wp option delete 'mpclp_background'
wp option delete 'mpclp_background_repeat'
wp option delete 'mpclp_background_size'
wp option delete 'mpclp_login_form_background'
wp option delete 'mpclp_login_form_label'
wp option delete 'mpclp_login_message'
wp option delete 'mpclp_login_btn_background'
wp option delete 'mpclp_login_btn_background_hover'
wp option delete 'mpclp'

