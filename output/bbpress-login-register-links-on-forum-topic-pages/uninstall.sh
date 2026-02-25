#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tomas_bbpress_login_bar_disable_all_feature'
wp option delete 'tomas_bbpress_custom_links_login'
wp option delete 'bbpress_login_redirect_free'
wp option delete 'tomas_bbpress_login_bar_display_lost_password'
wp option delete 'bbpresscustomcss'
wp option delete 'bbpress_login_admin_bar'
wp option delete 'bbpress_enable_bbpress_sidebar'
wp option delete 'tomas_bbpress_only_selected_sidebar'
wp option delete 'tomas_bbpress_login_bar_location'
wp option delete 'tomas_bbpress_stop_register_spam'
wp option delete 'bbploginuser_first_run_guide_bar'
wp option delete 'tomas_bbpress_login_admin_logged_notificaion'

