#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ht_honeypot_path'
wp option delete 'ht_use_custom_honeypot'
wp option delete 'ht_use_body_open_honeypot'
wp option delete 'ht_use_menu_honeypot'
wp option delete 'ht_use_search_form_honeypot'
wp option delete 'ht_use_footer_honeypot'
wp option delete 'ht_use_the_content_honeypot'
wp option delete 'ht_use_istorm'
wp option delete 'ht_isc_attack_threshold'
wp option delete 'ht_isc_day_span'
wp option delete 'ht_isc_block_days'
wp option delete 'ht_isc_block_ip6'
wp option delete 'ht_use_spamcop'
wp option delete 'ht_use_project_honeypot'
wp option delete 'ht_automatic_bing_ranges'
wp option delete 'ht_automatic_google_ranges'
wp option delete 'ht_ph_api_key'
wp option delete 'ht_ph_bl_days'
wp option delete 'ht_ph_bl_threat_score'
wp option delete 'ht_ph_check_ip_interval'
wp option delete 'ht_restrict_to_allowlist'
wp option delete 'ht_login_mon'
wp option delete 'ht_login_limit'
wp option delete 'ht_login_time_span'
wp option delete 'ht_login_block_time'
wp option delete 'ht_show_login_count'
wp option delete 'ht_404_mon'
wp option delete 'ht_404_limit'
wp option delete 'ht_404_time_span'
wp option delete 'ht_404_block_time'
wp option delete 'ht_response_code'
wp option delete 'ht_banned_usernames'
wp option delete 'ht_hide_usernames'
wp option delete 'ht_site_level_lists'
wp option delete 'ht_ph_bl_max_days'
wp option delete 'ht_plugin_version'
wp option delete '_site_transient_timeout_HT_delete_blocked_ips'
wp option delete '_site_transient_timeout_HT_spam_records_checked'
wp option delete 'active_sitewide_plugins'
wp option delete 'ht_bl_threat_score'
wp option delete 'ht_only_allow_whitelist'
wp option delete '_site_transient_timeout_HT_clean_temp_allowlist'
wp option delete 'ht_istorm_retry'

# Delete Transients
wp transient delete 'HT_spam_records_checked'
wp transient delete 'HT_delete_blocked_ips'
wp transient delete 'HT_clean_temp_allowlist'

# Clear Cron Jobs
wp cron event delete 'HT_update_searchbot_ranges'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
