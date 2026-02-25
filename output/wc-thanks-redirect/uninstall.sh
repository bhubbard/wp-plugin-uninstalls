#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wctr_thanks_redirect_enable_template_redirect'
wp option delete 'pys_facebook'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wctr_global'
wp option delete 'wctr_thanks_redirect_url'
wp option delete 'wctr_failed_redirect_url'
wp option delete 'wp_user_roles'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_thanks_redirect_custom_thankyou'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_thanks_redirect_custom_thankyou'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_thanks_redirect_custom_thankyou'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_thanks_redirect_custom_thankyou'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_thanks_redirect_custom_failure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_thanks_redirect_custom_failure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_thanks_redirect_custom_failure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_thanks_redirect_custom_failure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_thanks_redirect_url_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_thanks_redirect_url_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_thanks_redirect_url_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_thanks_redirect_url_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
