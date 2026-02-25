#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_history_detective_mode_enabled'
wp option delete 'simple_history_experimental_features_enabled'
wp option delete 'simple_history_enable_rss_feed'
wp option delete 'simple_history_rss_secret'
wp option delete 'simple_history_email_report_enabled'
wp option delete 'simple_history_pager_size'
wp option delete 'simple_history_pager_size_dashboard'
wp option delete 'simple_history_show_on_dashboard'
wp option delete 'simple_history_show_as_page'
wp option delete 'simple_history_show_in_admin_bar'
wp option delete 'simple_history_total_logged_events_count'
wp option delete 'simple_history_install_date_gmt'
wp option delete 'simple_history_email_report_recipients'
wp option delete 'simple_history_db_version'
wp option delete 'simple_history_menu_page_location'
wp option delete 'limit_login_retries'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_info_before_update'"
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'simple_history/email_report'
wp cron event delete 'simple_history/maybe_purge_db'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
