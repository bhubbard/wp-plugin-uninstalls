#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advaipbl_version_installed'
wp option delete 'advaipbl_run_setup_wizard'
wp option delete 'advaipbl_spamhaus_last_update'
wp option delete 'advaipbl_blocked_user_agents'
wp option delete 'advaipbl_whitelisted_user_agents'
wp option delete 'advaipbl_honeypot_urls'
wp option delete 'advaipbl_ips_whitelist'
wp option delete 'advaipbl_telemetry_notice_dismissed'
wp option delete 'advaipbl_spamhaus_asn_list'
wp option delete 'advaipbl_blocked_ips_threat_score'
wp option delete 'advaipbl_community_blocklist'
wp option delete 'advaipbl_db_version'
wp option delete 'advaipbl_admin_ip_whitelist_trigger'
wp option delete 'advaipbl_legacy_options_cleaned'
wp option delete 'advaipbl_ip_table_migration_complete'
wp option delete 'advaipbl_settings'
wp option delete 'woocommerce_default_country'
wp option delete 'advaipbl_autoload_version'
wp option delete 'advaipbl_usm_sessions_per_page'

# Delete Transients
wp transient delete 'advaipbl_abuseipdb_paused'
wp transient delete 'advaipbl_abuseipdb_notif_sent'
wp transient delete 'advaipbl_crons_scheduled'
wp transient delete 'advaipbl_crons_scheduled_v866'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_advaipbl_transient_api_key_%' OR option_name LIKE '_site_transient_advaipbl_transient_api_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_advaipbl_grace_pass_%' OR option_name LIKE '_site_transient_advaipbl_grace_pass_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_advaipbl_challenge_%' OR option_name LIKE '_site_transient_advaipbl_challenge_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_advaipbl_verified_bot_%' OR option_name LIKE '_site_transient_advaipbl_verified_bot_%'"
wp transient delete 'advaipbl_admin_notice'
wp transient delete 'advaipbl_lockdown_active_xmlrpc'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_advaipbl_blocked_ip_%' OR option_name LIKE '_site_transient_advaipbl_blocked_ip_%'"
wp transient delete 'advaipbl_active_sessions_cache'
wp transient delete 'update_themes'
wp transient delete 'update_core'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'advaipbl_update_spamhaus_list_event'
wp cron event delete 'advaipbl_send_telemetry_data_event'
wp cron event delete 'advaipbl_threat_score_decay_event'
wp cron event delete 'advaipbl_signature_analysis_event'
wp cron event delete 'advaipbl_purge_old_logs_event'
wp cron event delete 'advaipbl_send_summary_email'
wp cron event delete 'advaipbl_send_signature_summary_email'
wp cron event delete 'advaipbl_update_geoip_db_event'
wp cron event delete 'advaipbl_clear_expired_blocks_event'
wp cron event delete 'advaipbl_cleanup_expired_cache_event'
wp cron event delete 'advaipbl_daily_fim_scan'
wp cron event delete 'advaipbl_scheduled_scan_event'
wp cron event delete 'advaipbl_community_report_event_v2'
wp cron event delete 'advaipbl_community_report_event'
wp cron event delete 'advaipbl_update_community_list_event'
wp cron event delete 'advaipbl_cloudflare_cleanup_event'
wp cron event delete 'advaipbl_cloudflare_sync_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advaipbl_2fa_setup_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advaipbl_2fa_setup_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advaipbl_2fa_setup_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advaipbl_2fa_setup_required'"
