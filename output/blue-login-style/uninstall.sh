#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blue_upload_logo'
wp option delete 'blue_custom_style'
wp option delete 'blue_upload_background'
wp option delete 'blue_upload_repeat'
wp option delete 'blue_upload_position'
wp option delete 'blue_login_redirect'
wp option delete 'blue_logout_redirect'
wp option delete 'blue_register_redirect'
wp option delete 'blue_login_message'
wp option delete 'blue_default_theme'

