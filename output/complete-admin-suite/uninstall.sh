#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caswp_modules'
wp option delete 'caswp_admin_bar_customizer_options'
wp option delete 'caswp_footer_customizer_options'
wp option delete 'caswp_heartbeat_customizer_options'
wp option delete 'caswp_login_logo_customizer_options'
wp option delete 'caswp_user_activity_columns_options'
wp option delete 'caswp_gutenberg_disabler_options'
wp option delete 'caswp_login_url_customizer_options'
wp option delete 'caswp_maintenance_mode_options'
wp option delete 'caswp_admin_logo_customizer_options'
wp option delete 'caswp_login_method_customizer_options'
wp option delete 'caswp_notification_customizer_options'
wp option delete 'caswp_body_class_customizer_options'

