#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notice_dissmissed'
wp option delete 'widgetkit_save_settings'
wp option delete 'widgetkit_save_woo_settings'
wp option delete 'widgetkit_save_woo_single_settings'
wp option delete 'widgetkit_save_ld_settings'
wp option delete 'widgetkit_save_lp_settings'
wp option delete 'widgetkit_save_sensei_settings'
wp option delete 'widgetkit_save_lifter_settings'
wp option delete 'widgetkit_save_tutor_settings'
wp option delete 'wkfe_mailchimp_api_key'
wp option delete 'wkfe_mailchimp_list_id'
wp option delete 'wk_pro_license_key'
wp option delete 'active_sitewide_plugins'
wp option delete 'wk-td-ads-notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'changelog_data'

# Clear Cron Jobs

