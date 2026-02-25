#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'bh_wp_autologin_urls_seconds_until_expiry'
wp option delete 'bh_wp_autologin_urls_klaviyo_private_key'
wp option delete 'bh_wp_autologin_urls_is_admin_enabled'
wp option delete 'bh_wp_autologin_urls_subject_filter_regex_dictionary'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-recent-error-data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log_level'"

