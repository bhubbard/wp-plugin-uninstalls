#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bulletproof_security_options_sec_log_post_limit'
wp option delete 'bulletproof_security_options_gdpr'
wp option delete 'bulletproof_security_options_customcode'
wp option delete 'bulletproof_security_options_customcode_WPA'
wp option delete 'bulletproof_security_options_customcode_UAEG'
wp option delete 'bulletproof_security_options_apache_modules'
wp option delete 'bulletproof_security_options_htaccess_res'
wp option delete 'bulletproof_security_options_GDMW'
wp option delete 'bulletproof_security_options_htaccess_files'
wp option delete 'bulletproof_security_options_hpf_cron'
wp option delete 'bulletproof_security_options_hidden_plugins'
wp option delete 'ms_files_rewriting'
wp option delete 'bulletproof_security_options_autolock'
wp option delete 'bulletproof_security_options_wizard_free'
wp option delete 'bulletproof_security_options_scrolltop'
wp option delete 'bulletproof_security_options_zip_fix'
wp option delete 'bulletproof_security_options_mynotes'
wp option delete 'bulletproof_security_options_db_backup'
wp option delete 'bulletproof_security_options_theme_skin'
wp option delete 'bulletproof_security_options_DBB_log'
wp option delete 'bulletproof_security_options_email'
wp option delete 'bulletproof_security_options_MU_tools_free'
wp option delete 'bulletproof_security_options_mu_wp_autoupdate'
wp option delete 'bulletproof_security_options'
wp option delete 'bulletproof_security_options_SLF'
wp option delete 'bulletproof_security_options_debug'
wp option delete 'bulletproof_security_options_wpt_nodes'
wp option delete 'bulletproof_security_options_mu_sysinfo'
wp option delete 'bulletproof_security_options_autoupdate'
wp option delete 'bulletproof_security_options_new_feature'
wp option delete 'bulletproof_security_options_MScan_status'
wp option delete 'bulletproof_security_options_mscan_report'
wp option delete 'bulletproof_security_options_mod_security'
wp option delete 'bulletproof_security_options_pop_uninstall'
wp option delete 'bulletproof_security_options_mscan_patterns'
wp option delete 'bulletproof_security_options_mscan_t_hash_new'
wp option delete 'bulletproof_security_options_mscan_nodownload'
wp option delete 'bulletproof_security_options_mscan_theme_hash'
wp option delete 'bulletproof_security_options_mscan_p_hash_new'
wp option delete 'bulletproof_security_options_mscan_plugin_hash'
wp option delete 'bulletproof_security_options_login_security_jtc'
wp option delete 'bulletproof_security_options_mscan_hash_status'
wp option delete 'bulletproof_security_options_php_memory_limit'
wp option delete 'bulletproof_security_options_mscan_zip_upload'
wp option delete 'bulletproof_security_options_wizard_autofix'
wp option delete 'bulletproof_security_options_status_display'
wp option delete 'bulletproof_security_options_login_security'
wp option delete 'bulletproof_security_options_idle_session'
wp option delete 'bulletproof_security_options_zip_filename'
wp option delete 'bulletproof_security_options_auth_cookie'
wp option delete 'bulletproof_security_options_maint_mode'
wp option delete 'bulletproof_security_options_MScan_log'
wp option delete 'bulletproof_security_options_rate_free'
wp option delete 'bulletproof_security_options_spinner'
wp option delete 'bulletproof_security_options_vcheck'
wp option delete 'bulletproof_security_options_MScan'
wp option delete 'bulletproof_security_options_fsp'
wp option delete 'bulletproof_security_options_maint'
wp option delete 'bulletproof_security_options_net_correction'
wp option delete 'bulletproof_security_options_setup_wizard_woo'
wp option delete 'bulletproof_security_options_MU_tools'
wp option delete 'active_sitewide_plugins'
wp option delete 'comet_cache_options'
wp option delete 'mm_cache_settings'
wp option delete 'endurance_cache_level'
wp option delete 'bulletproof_security_options_monitor'

# Delete Transients
wp transient delete 'bulletproof-security_info'

# Clear Cron Jobs
wp cron event delete 'bpsPro_HPF_check'
wp cron event delete 'bpsPro_DBB_check'
wp cron event delete 'bpsPro_email_log_files'
wp cron event delete 'bpsPro_MScan_check'
wp cron event delete 'bpsPro_plugin_updates_cron'
wp cron event delete 'bpsPro_theme_updates_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_iis_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_iis_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_iis_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_iis_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_bonus_code_dismiss_all_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_bonus_code_dismiss_all_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_bonus_code_dismiss_all_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_bonus_code_dismiss_all_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_brute_force_login_protection_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_brute_force_login_protection_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_brute_force_login_protection_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_brute_force_login_protection_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_speed_boost_cache_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_speed_boost_cache_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_speed_boost_cache_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_speed_boost_cache_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_author_enumeration_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_author_enumeration_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_author_enumeration_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_author_enumeration_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_xmlrpc_ddos_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_xmlrpc_ddos_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_xmlrpc_ddos_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_xmlrpc_ddos_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_post_request_attack_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_post_request_attack_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_post_request_attack_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_post_request_attack_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_sniff_driveby_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_sniff_driveby_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_sniff_driveby_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_sniff_driveby_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_iframe_clickjack_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_iframe_clickjack_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_iframe_clickjack_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_iframe_clickjack_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_PhpiniHandler_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_PhpiniHandler_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_PhpiniHandler_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_PhpiniHandler_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_safemode_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_safemode_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_safemode_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_safemode_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_Permalinks_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_Permalinks_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_Permalinks_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_Permalinks_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_wpfirewall2_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_wpfirewall2_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_wpfirewall2_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_wpfirewall2_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpsPro_ignore_speed_boost_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpsPro_ignore_speed_boost_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpsPro_ignore_speed_boost_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpsPro_ignore_speed_boost_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_jtc_lite_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_jtc_lite_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_jtc_lite_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_jtc_lite_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_rate_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_rate_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_rate_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_rate_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpsPro_ignore_mod_security_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpsPro_ignore_mod_security_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpsPro_ignore_mod_security_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpsPro_ignore_mod_security_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpsPro_ignore_gdpr_compliance_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpsPro_ignore_gdpr_compliance_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpsPro_ignore_gdpr_compliance_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpsPro_ignore_gdpr_compliance_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_root_version_check_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_root_version_check_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_root_version_check_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_root_version_check_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpsPro_ignore_mu_wp_automatic_updates_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpsPro_ignore_mu_wp_automatic_updates_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpsPro_ignore_mu_wp_automatic_updates_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpsPro_ignore_mu_wp_automatic_updates_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpsPro_hud_owner_uid_check_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpsPro_hud_owner_uid_check_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpsPro_hud_owner_uid_check_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpsPro_hud_owner_uid_check_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpsPro_ignore_bpspro_sale_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpsPro_ignore_bpspro_sale_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpsPro_ignore_bpspro_sale_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpsPro_ignore_bpspro_sale_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpsPro_hud_new_feature_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpsPro_hud_new_feature_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpsPro_hud_new_feature_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpsPro_hud_new_feature_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_sucuri_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_sucuri_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_sucuri_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_sucuri_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_BLC_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_BLC_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_BLC_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_BLC_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_hud_NetworkActivationAlert_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_hud_NetworkActivationAlert_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_hud_NetworkActivationAlert_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_hud_NetworkActivationAlert_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_referer_spam_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_referer_spam_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_referer_spam_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_referer_spam_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_jetpack_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_jetpack_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_jetpack_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_jetpack_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_woocommerce_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_woocommerce_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_woocommerce_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_woocommerce_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_woocommerce_lsm_jtc_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_woocommerce_lsm_jtc_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_woocommerce_lsm_jtc_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_woocommerce_lsm_jtc_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_autoupdate_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_autoupdate_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_autoupdate_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_autoupdate_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpsPro_ignore_EPC_plugin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpsPro_ignore_EPC_plugin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpsPro_ignore_EPC_plugin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpsPro_ignore_EPC_plugin_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_ignore_mscan_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_ignore_mscan_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_ignore_mscan_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_ignore_mscan_notice'"
