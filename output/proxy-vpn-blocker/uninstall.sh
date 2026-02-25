#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pvb_setup_complete'
wp option delete 'pvb_enable_debugging'
wp option delete 'pvb_defined_protected_paths'
wp option delete 'pvb_option_ip_header_type'
wp option delete 'proxy_vpn_blocker_version'
wp option delete 'proxy_vpn_blocker_proxycheck_api_version'
wp option delete 'pvb_proxycheckio_current_key'
wp option delete 'pvb_proxycheckio_API_Key_field'
wp option delete 'pvb_proxycheckio_custom_blocked_page'
wp option delete 'pvb_proxycheckio_blocked_select_pages_field'
wp option delete 'pvb_proxycheckio_API_Key_invalid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pvb_activation_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'pvb_proxycheckio_dummy_data'
wp option delete 'pvb_db_version'
wp option delete 'pvb_proxycheckio_blocked_select_posts_field'
wp option delete 'pvb_proxycheckio_master_activation'
wp option delete 'pvb_proxycheckio_VPN_select_box'
wp option delete 'pvb_proxycheckio_TAG_select_box'
wp option delete 'pvb_proxycheckio_Custom_TAG_field'
wp option delete 'pvb_proxycheckio_denied_access_field'
wp option delete 'pvb_proxycheckio_Days_Selector'
wp option delete 'pvb_proxycheckio_all_pages_activation'
wp option delete 'pvb_proxycheckio_blocked_countries_field'
wp option delete 'pvb_proxycheckio_whitelist_countries_select_box'
wp option delete 'pvb_proxycheckio_good_ip_cache_time'
wp option delete 'pvb_proxycheckio_opt_redirect_url'
wp option delete 'pvb_proxycheckio_redirect_bad_visitor'
wp option delete 'pvb_proxycheckio_Admin_Alert_Denied_Email'
wp option delete 'pvb_protect_login_authentication'
wp option delete 'pvb_allow_staff_bypass'
wp option delete 'pvb_cache_buster'
wp option delete 'pvb_http_referrer_addresses'
wp option delete 'pvb_blocked_pages_ids_array'
wp option delete 'classic-editor-replace'
wp option delete 'pvb_log_user_ip_select_box'
wp option delete 'pvb_proxycheck_apikey_details'
wp option delete 'pvb_proxycheckio_risk_select_box'
wp option delete 'proxycheckio_max_riskscore_vpn'
wp option delete 'proxycheckio_max_riskscore_proxy'
wp option delete 'proxy_vpn_blocker_last_update'
wp option delete 'pvb_cors_integration'
wp option delete 'pvb_option_help_mode'
wp option delete 'pvb_proxycheckio_max_riskscore_vpn'
wp option delete 'pvb_proxycheckio_max_riskscore_proxy'
wp option delete 'pvb_protected_paths'
wp option delete 'pvb_proxycheckio_HMAC_verification_key'
wp option delete 'pvb_CORS_protect_on_webcache'
wp option delete 'pvb_proxycheckio_CORS_public_key'
wp option delete 'pvb_CORS_antiadblock'
wp option delete 'pvb_protect_default_login_page'
wp option delete 'pvb_protect_comments'
wp option delete 'pvb_proxycheckio_CLOUDFLARE_select_box'
wp option delete 'pvb_blocked_posts_array'
wp option delete 'pvb_blocked_pages_array'
wp option delete 'pvb_blocked_permalinks_array'
wp option delete 'pvb_proxycheckio_detectiontype_vpn'
wp option delete 'pvb_proxycheckio_detectiontype_proxy'
wp option delete 'pvb_proxycheckio_detectiontype_compromised'
wp option delete 'pvb_proxycheckio_detectiontype_tor'
wp option delete 'pvb_cleanup_on_uninstall'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_own_domain_added_' OR option_name LIKE '_site_transient_%_own_domain_added_'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_own_domain_removed_' OR option_name LIKE '_site_transient_%_own_domain_removed_'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_webcache_domains_added_' OR option_name LIKE '_site_transient_%_webcache_domains_added_'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_webcache_domains_removed_' OR option_name LIKE '_site_transient_%_webcache_domains_removed_'"
wp transient delete 'pvb_review_stats'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pvb_admin_email_denied_timeout_%' OR option_name LIKE '_site_transient_pvb_admin_email_denied_timeout_%'"
wp transient delete 'pvb_db_upgrade_running'

# Clear Cron Jobs
wp cron event delete 'delete_old_pvb_action_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pvb_checkbox_block_on_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pvb_checkbox_block_on_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pvb_checkbox_block_on_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pvb_checkbox_block_on_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'registration_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'registration_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'registration_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'registration_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'registration_ip_metrics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'registration_ip_metrics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'registration_ip_metrics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'registration_ip_metrics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_ip_metrics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_ip_metrics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_ip_metrics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_ip_metrics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'signup_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'signup_ip'"
