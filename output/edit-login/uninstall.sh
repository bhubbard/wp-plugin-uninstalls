#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'editLogin_login_logo_url'
wp option delete 'editLogin_login_logo_image'
wp option delete 'editLogin_login_bg_image'
wp option delete 'editLogin_login_custom_font'

