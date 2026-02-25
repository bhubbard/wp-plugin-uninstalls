#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loginizer_provider_settings'
wp option delete 'loginizer_social_order'
wp option delete 'loginizer_version'
wp option delete 'loginizer_options'
wp option delete 'loginizer_last_reset'
wp option delete 'loginizer_whitelist'
wp option delete 'loginizer_blacklist'
wp option delete 'loginizer_2fa_whitelist'
wp option delete 'loginizer_softwp_upgrade'
wp option delete 'lz_version'
wp option delete 'loginizer_social_settings'
wp option delete 'loginizer_captcha'
wp option delete 'loginizer_ip_method'
wp option delete 'loginizer_custom_ip_method'
wp option delete 'loginizer_login_mail'
wp option delete 'loginizer_ins_time'
wp option delete 'loginizer_disable_brute'
wp option delete 'site_name'
wp option delete 'loginizer_login_attempt_stats'
wp option delete 'loginizer_msg'
wp option delete 'loginizer_2fa_msg'
wp option delete 'loginizer_2fa_email_template'
wp option delete 'loginizer_security'
wp option delete 'loginizer_wp_admin'
wp option delete 'loginizer_csrf_promo_time'
wp option delete 'loginizer_backuply_promo_time'
wp option delete 'loginizer_promo_time'
wp option delete 'loginizer_checksums_last_run'
wp option delete 'loginizer_checksums_diff'
wp option delete 'loginizer_2fa_custom_redirect'
wp option delete 'external_updates-loginizer-security'
wp option delete 'loginizer_pro_version'
wp option delete 'softaculous_plugin_update_notice'
wp option delete 'loginizer_license_notice'
wp option delete 'loginizer_license'
wp option delete 'loginizer_dismiss_newsletter'
wp option delete 'loginizer_social_login_url'
wp option delete 'loginizer_2fa'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'loginizer_%'"
wp option delete 'loginizer_checksums_ignore'
wp option delete 'loginizer_checksums'
wp option delete 'loginizer_no_announcement'
wp option delete 'loginizer_epl'
wp option delete 'site_admins'
wp option delete 'loginizer_username_blacklist'
wp option delete 'loginizer_domains_blacklist'
wp option delete 'loginizer_csrf_protection'
wp option delete 'loginizer_limit_session'
wp option delete 'loginizer_sso_links'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'loginizer_csrf_mod_rewrite'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginizer_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginizer_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginizer_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginizer_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'loginizer_sso_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'loginizer_sso_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'loginizer_sso_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'loginizer_sso_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginizer_avatar_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginizer_avatar_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginizer_avatar_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginizer_avatar_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%lz_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%lz_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%lz_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lz_avatar'"
