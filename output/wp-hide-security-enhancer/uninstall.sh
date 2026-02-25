#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webarx_mv_wp_login'
wp option delete 'webarx_rename_wp_login'
wp option delete 'wph-environment-ignore-rewrite-test'
wp option delete 'wph/site_scan'
wp option delete 'wph-first-view'
wp option delete 'wph-process_set_static_environment_errors'
wp option delete 'wph_settings'
wp option delete 'wph-previous-login-url'
wp option delete 'active_sitewide_plugins'
wp option delete 'wph-login-changed-send-email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_roles'"
wp option delete 'current_theme'
wp option delete 'wph_cache_files_data'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'wph-process_interface_save_errors'
wp transient delete 'wph-process_API_interface_errors'
wp transient delete 'wphide-local-ip'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_app_setup_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_app_setup_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_app_setup_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_app_setup_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_app_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_app_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_app_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_app_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_email_token_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_email_token_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_email_token_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_email_token_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_email_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_email_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_email_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_email_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_rc_setup_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_rc_setup_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_rc_setup_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_rc_setup_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_rc_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_rc_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_rc_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_rc_list'"
