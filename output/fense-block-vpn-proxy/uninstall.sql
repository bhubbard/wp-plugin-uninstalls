-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FENSE_BPVT_DEVOZON_cache_safe_mode', 'FENSE_BPVT_DEVOZON_licence_key', 'TOTAL_GUARD_DEVOZON_enable_cache', 'FENSE_BPVT_DEVOZON_protection_mode', 'FENSE_BPVT_DEVOZON_enable_stats', 'FENSE_BPVT_DEVOZON_tg_wp_version', 'FENSE_BPVT_DEVOZON_tg_wp_version_time', 'FENSE_BPVT_DEVOZON_ad_code', 'FENSE_BPVT_DEVOZON_api_data', 'FENSE_BPVT_DEVOZON_api_data_time', 'bpvt_is_api_key_valid', 'fense_bpvt_clean_up', 'fense_bpvt_plugin_settings', 'FENSE_BPVT_DEVOZON_is_daily_limit_reached');
DELETE FROM wp_options WHERE option_name LIKE '%enable_dtg';
DELETE FROM wp_options WHERE option_name LIKE '%licence_key';
DELETE FROM wp_options WHERE option_name LIKE '%enable_on_custom';
DELETE FROM wp_options WHERE option_name LIKE '%enable_on_logged_users';
DELETE FROM wp_options WHERE option_name LIKE '%enable_on_posts';
DELETE FROM wp_options WHERE option_name LIKE '%enable_on_pages';
DELETE FROM wp_options WHERE option_name LIKE '%enable_on_login';
DELETE FROM wp_options WHERE option_name LIKE '%enable_cache';
DELETE FROM wp_options WHERE option_name LIKE '%show_link';
DELETE FROM wp_options WHERE option_name LIKE '%show_link_val';
DELETE FROM wp_options WHERE option_name LIKE '%protection_mode';
DELETE FROM wp_options WHERE option_name LIKE '%restrict_message';
DELETE FROM wp_options WHERE option_name LIKE '%redirect_to_url';
DELETE FROM wp_options WHERE option_name LIKE '%block_vpn';
DELETE FROM wp_options WHERE option_name LIKE '%block_proxy';
DELETE FROM wp_options WHERE option_name LIKE '%block_vps';
DELETE FROM wp_options WHERE option_name LIKE '%crawlers_bots';
DELETE FROM wp_options WHERE option_name LIKE '%crawlers_bots_data';
DELETE FROM wp_options WHERE option_name LIKE '%ip_whitelisting_enable';
DELETE FROM wp_options WHERE option_name LIKE '%ip_blacklisting_enable';
DELETE FROM wp_options WHERE option_name LIKE '%cache_safe_mode';
DELETE FROM wp_options WHERE option_name LIKE '%api_data';
DELETE FROM wp_options WHERE option_name LIKE '%api_data_time';
DELETE FROM wp_options WHERE option_name LIKE '%enable_country';
DELETE FROM wp_options WHERE option_name LIKE '%disable_country';
DELETE FROM wp_options WHERE option_name LIKE '%restrict_enable_country';
DELETE FROM wp_options WHERE option_name LIKE '%restrict_disable_country';
DELETE FROM wp_options WHERE option_name LIKE '%restrict_domain';
DELETE FROM wp_options WHERE option_name LIKE '%ip_whitelisting';
DELETE FROM wp_options WHERE option_name LIKE '%ip_whitelisting_range';
DELETE FROM wp_options WHERE option_name LIKE '%ip_blacklisting';
DELETE FROM wp_options WHERE option_name LIKE '%ip_blacklisting_range';
DELETE FROM wp_options WHERE option_name LIKE '%plugin_version_updates';
DELETE FROM wp_options WHERE option_name LIKE 'bpvt_ip_%';
DELETE FROM wp_options WHERE option_name LIKE 'bpvt_sm_%';

