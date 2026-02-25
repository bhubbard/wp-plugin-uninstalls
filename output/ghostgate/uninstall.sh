#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ghostgate_json_allowed_routes'
wp option delete 'ghostgate_json_allowed_prefixes'
wp option delete 'ghostgate_hide_json_endpoints'
wp option delete 'ghostgate_login_slug'
wp option delete 'ghostgate_enable_login_slug'
wp option delete 'ghostgate_code_length'
wp option delete 'ghostgate_enable_code_length'
wp option delete 'ghostgate_code_mode'
wp option delete 'ghostgate_enable_code_mode'
wp option delete 'ghostgate_custom_code'
wp option delete 'ghostgate_enable_2fa'
wp option delete 'ghostgate_ajax_limit'
wp option delete 'ghostgate_ajax_cooldown'
wp option delete 'ghostgate_enable_ajax_limit'
wp option delete 'ghostgate_ajax_notify'
wp option delete 'ghostgate_log_file_path'
wp option delete 'ghostgate_enable_log_file'
wp option delete 'ghostgate_log_retention_days'
wp option delete 'ghostgate_enable_login_limit'
wp option delete 'ghostgate_login_attempt_limit'
wp option delete 'ghostgate_notify_on_block'
wp option delete 'ghostgate_login_block_cooldown'
wp option delete 'ghostgate_block_author_enum'
wp option delete 'ghostgate_disable_xmlrpc'
wp option delete 'ghostgate_block_unused_rest'
wp option delete 'ghostgate_enable_rest_limit'
wp option delete 'ghostgate_rest_limit_count'
wp option delete 'ghostgate_rest_limit_cooldown'
wp option delete 'ghostgate_enable_session_control'
wp option delete 'ghostgate_session_timeout'
wp option delete 'ghostgate_block_preview'
wp option delete 'ghostgate_block_index'
wp option delete 'ghostgate_session_grace_until'
wp option delete 'ghostgate_session_interval'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo_2fa_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo_2fa_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo_2fa_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo_2fa_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wfls_twoFactorStatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wfls_twoFactorStatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wfls_twoFactorStatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wfls_twoFactorStatus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghostgate_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghostgate_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghostgate_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghostgate_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghostgate_enable_2fa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghostgate_enable_2fa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghostgate_enable_2fa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghostgate_enable_2fa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghostgate_2fa_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghostgate_2fa_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghostgate_2fa_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghostgate_2fa_verified'"
