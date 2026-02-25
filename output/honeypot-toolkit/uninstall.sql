-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ht_honeypot_path', 'ht_use_custom_honeypot', 'ht_use_body_open_honeypot', 'ht_use_menu_honeypot', 'ht_use_search_form_honeypot', 'ht_use_footer_honeypot', 'ht_use_the_content_honeypot', 'ht_use_istorm', 'ht_isc_attack_threshold', 'ht_isc_day_span', 'ht_isc_block_days', 'ht_isc_block_ip6', 'ht_use_spamcop', 'ht_use_project_honeypot', 'ht_automatic_bing_ranges', 'ht_automatic_google_ranges', 'ht_ph_api_key', 'ht_ph_bl_days', 'ht_ph_bl_threat_score', 'ht_ph_check_ip_interval', 'ht_restrict_to_allowlist', 'ht_login_mon', 'ht_login_limit', 'ht_login_time_span', 'ht_login_block_time', 'ht_show_login_count', 'ht_404_mon', 'ht_404_limit', 'ht_404_time_span', 'ht_404_block_time', 'ht_response_code', 'ht_banned_usernames', 'ht_hide_usernames', 'ht_site_level_lists', 'ht_ph_bl_max_days', 'ht_plugin_version', '_site_transient_timeout_HT_delete_blocked_ips', '_site_transient_timeout_HT_spam_records_checked', 'active_sitewide_plugins', 'ht_bl_threat_score', 'ht_only_allow_whitelist', '_site_transient_timeout_HT_clean_temp_allowlist', 'ht_istorm_retry', 'HT_spam_records_checked', 'HT_delete_blocked_ips', 'HT_clean_temp_allowlist');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname');

