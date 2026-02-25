#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faq_version'
wp option delete 'faq_pro_welcome_page_shown'
wp option delete 'faq_pro_welcome_page_shown_time'
wp option delete 'faq_allow_tracking'
wp option delete 'faq_ts_tracker_last_send'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ts_tracker_last_send'"
wp option delete 'ts_reset_tracking'
wp option delete 'wcap_restrict_domain_address'
wp option delete 'active_TS_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown_time'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acf_open'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acf_open'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acf_open'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acf_open'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acf_rtt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acf_rtt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acf_rtt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acf_rtt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
