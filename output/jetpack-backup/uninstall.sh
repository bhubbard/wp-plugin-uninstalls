#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_backup_db_version'
wp option delete 'stats_options'
wp option delete 'jetpack_activation_source'
wp option delete 'jetpack_affiliate_code'
wp option delete 'jetpack_partner_subsidiary_id'
wp option delete 'jetpack_offline_mode'
wp option delete 'vaultpress'
wp option delete 'vaultpress_auto_register'
wp option delete 'jetpack_sso_remove_login_form'
wp option delete 'jetpack_sso_match_by_email'
wp option delete 'jetpack_sso_require_two_step'
wp option delete 'trusted_ip_header'
wp option delete 'wordpress_api_key'
wp option delete 'jb_get_started'
wp option delete 'jetpack_protect_blocked_attempts'
wp option delete 'jetpack_protect_active'
wp option delete 'wpcom_public_coming_soon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%full_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full-sync-enqueue'"
wp option delete 'jetpack_plugin_api_action_links'
wp option delete 'jetpack_site_icon_url'
wp option delete 'jetpack_sync_non_blocking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jetpack_constant_%'"
wp option delete 'jetpack_updates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jetpack_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jetpack_network_%'"
wp option delete 'jetpack_full_sync_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%immediate-send'"
wp option delete 'has_jetpack_search_product'

# Delete Transients
wp transient delete 'jetpack_assumed_site_creation_date'
wp transient delete 'jetpack_idc_possible_dynamic_site_url_detected'
wp transient delete 'jetpack_idc_local'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_idc_ip_requester_%' OR option_name LIKE '_site_transient_jetpack_idc_ip_requester_%'"
wp transient delete 'jetpack_last_plugin_sync'
wp transient delete 'my_jetpack_write_access'
wp transient delete 'jetpack_partner_data'
wp transient delete 'my_jetpack_product_activated'
wp transient delete 'jetpack_is_single_user'
wp transient delete 'jetpack_plugin_api_action_links_refresh'
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_update_%' OR option_name LIKE '_site_transient_update_%'"

# Clear Cron Jobs
wp cron event delete 'jetpack_backup_cleanup_helper_scripts'
wp cron event delete 'jetpack_heartbeat'
wp cron event delete 'jetpack_clean_nonces'
wp cron event delete 'jetpack_sync_cron'
wp cron event delete 'jetpack_sync_full_cron'
wp cron event delete 'jetpack_sync_send_db_checksum'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
