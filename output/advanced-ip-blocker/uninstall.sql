-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advaipbl_version_installed', 'advaipbl_run_setup_wizard', 'advaipbl_spamhaus_last_update', 'advaipbl_blocked_user_agents', 'advaipbl_whitelisted_user_agents', 'advaipbl_honeypot_urls', 'advaipbl_ips_whitelist', 'advaipbl_telemetry_notice_dismissed', 'advaipbl_spamhaus_asn_list', 'advaipbl_blocked_ips_threat_score', 'advaipbl_community_blocklist', 'advaipbl_db_version', 'advaipbl_admin_ip_whitelist_trigger', 'advaipbl_legacy_options_cleaned', 'advaipbl_ip_table_migration_complete', 'advaipbl_settings', 'woocommerce_default_country', 'advaipbl_autoload_version', 'advaipbl_usm_sessions_per_page', 'advaipbl_abuseipdb_paused', 'advaipbl_abuseipdb_notif_sent', 'advaipbl_crons_scheduled', 'advaipbl_crons_scheduled_v866', 'advaipbl_admin_notice', 'advaipbl_lockdown_active_xmlrpc', 'advaipbl_active_sessions_cache', 'update_themes', 'update_core', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'advaipbl_transient_api_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'advaipbl_grace_pass_%';
DELETE FROM wp_options WHERE option_name LIKE 'advaipbl_challenge_%';
DELETE FROM wp_options WHERE option_name LIKE 'advaipbl_verified_bot_%';
DELETE FROM wp_options WHERE option_name LIKE 'advaipbl_blocked_ip_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_advaipbl_2fa_setup_required');
DELETE FROM wp_usermeta WHERE meta_key IN ('_advaipbl_2fa_setup_required');
DELETE FROM wp_termmeta WHERE meta_key IN ('_advaipbl_2fa_setup_required');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_advaipbl_2fa_setup_required');

