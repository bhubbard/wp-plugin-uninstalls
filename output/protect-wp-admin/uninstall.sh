#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pwa_active'
wp option delete 'pwa_rewrite_text'
wp option delete 'pwa_restrict'
wp option delete 'pwa_logout'
wp option delete 'pwa_allow_custom_users'
wp option delete 'pwa_logo_path'
wp option delete 'pwa_login_page_bg_color'
wp option delete 'pwa_login_page_color'

