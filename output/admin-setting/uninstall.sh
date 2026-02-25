#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'list_menu_remove'
wp option delete 'list_menu'
wp option delete 'logo_login'
wp option delete 'background_login'
wp option delete 'logo_login_url'
wp option delete 'logo_login_title'

