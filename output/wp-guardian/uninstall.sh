#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dtjwpg_core_admin_toolbar_link'
wp option delete 'dtjwpg_donate_upsell'
wp option delete 'dtjwpg_core_uninstall_remember'
wp option delete 'wp_guardian_firewall_enable'
wp option delete 'wp_guardian_firewall_long_requests'
wp option delete 'wp_guardian_firewall_xss'
wp option delete 'wp_guardian_firewall_long_requests_length'
wp option delete 'wp_guardian_firewall_redirect_page'
wp option delete 'dtjwpg_backend_token_option'
wp option delete 'dtjwpg_backend_redirect_option'
wp option delete 'dtjwpg_backup_location_option'
wp option delete 'dtjwpg_backup_email_option'
wp option delete 'dtjwpg_wp_fileedit_option'
wp option delete 'dtjwpg_wp_debug_option'
wp option delete 'dtjwpg_verify_option'
wp option delete 'dtjwpg_security_measure_restrict_file_access'
wp option delete 'dtjwpg_security_measure_configure_security_keys'
wp option delete 'dtjwpg_security_measure_block_xmlrpc'
wp option delete 'dtjwpg_security_measure_block_directory_browsing'
wp option delete 'dtjwpg_security_measure_disable_script_concatenation'
wp option delete 'dtjwpg_security_measure_turn_off_pingbacks'
wp option delete 'dtjwpg_security_measure_disable_unused_scripts'
wp option delete 'dtjwpg_security_measure_change_db_prefix'
wp option delete 'dtjwpg_security_measure_enable_bot_protection'
wp option delete 'dtjwpg_security_measure_block_sensitive_files'
wp option delete 'dtjwpg_security_measure_block_author_scans'
wp option delete 'dtjwpg_security_measure_change_admin_username'
wp option delete 'dtjwpg_security_measure_prevent_php_execution'
wp option delete 'dtjwpg_version_option'
wp option delete 'dtjwpg_auto_updates_option'
wp option delete 'dtjwpg_update_core_option'
wp option delete 'dtjwpg_update_plugins_option'
wp option delete 'dtjwpg_update_themes_option'
wp option delete 'dtjwpg_update_l10n_option'
wp option delete 'dtjwpg_server_config_option'
wp option delete 'dtjwpg_wp_unfilter_option'
wp option delete 'dtjwpg_wp_wpssl_option'
wp option delete 'dtjwpg_database_version'
wp option delete 'dtjwpg_wp_restapi_option'
wp option delete 'dtjwpg_wp_xmlrpc_option'
wp option delete 'dtjwpg_lockout_logins_option'
wp option delete 'dtjwpg_lockout_email_option'
wp option delete 'dtjwpg_lockout_logins_threshold_option'
wp option delete 'dtjwpg_lockout_logins_time_option'
wp option delete 'dtjwpg_wp_headers_option'
wp option delete 'dtjwpg_wp_emojis_option'
wp option delete 'wp_guardian_firewall_external_post'
wp option delete 'wp_guardian_firewall_brute_force'
wp option delete 'wp_guardian_firewall_redirect_custom'
wp option delete 'wpguardian_brute_force'
wp option delete 'dtjwpg_osc_aggressive_filter'
wp option delete '_login_attempts'
wp option delete 'wp_guardian_block_count'
wp option delete 'dtjwpg_file_guardian_last_check'
wp option delete 'wp_guardian_baseline'

# Clear Cron Jobs
wp cron event delete 'dtjwpg_file_guardian_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtjwpg_two_step_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtjwpg_two_step_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtjwpg_two_step_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtjwpg_two_step_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtjwpg_tsv_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtjwpg_tsv_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtjwpg_tsv_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtjwpg_tsv_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtjwpg_tsv_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtjwpg_tsv_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtjwpg_tsv_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtjwpg_tsv_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtjwpg_tsv_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtjwpg_tsv_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtjwpg_tsv_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtjwpg_tsv_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_login_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_login_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_login_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_login_attempts'"
