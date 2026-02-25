-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stats_options', 'jetpack_activation_source', 'jetpack_affiliate_code', 'jetpack_partner_subsidiary_id', 'jetpack_offline_mode', 'vaultpress', 'vaultpress_auto_register', 'jetpack_sso_remove_login_form', 'jetpack_sso_match_by_email', 'jetpack_sso_require_two_step', 'trusted_ip_header', 'wordpress_api_key', 'jb_get_started', 'jetpack_protect_blocked_attempts', 'active_sitewide_plugins', 'instant_search_enabled', 'has_jetpack_search_product', 'sidebars_widgets', 'widget_block', 'widget_jetpack-search-filters', 'jetpack_protect_active', 'wpcom_public_coming_soon', 'jetpack_plugin_api_action_links', 'jetpack_site_icon_url', 'jetpack_sync_non_blocking', 'jetpack_updates', 'jetpack_full_sync_status', 'jetpack_assumed_site_creation_date', 'jetpack_idc_possible_dynamic_site_url_detected', 'jetpack_idc_local', 'jetpack_last_plugin_sync', 'my_jetpack_write_access', 'jetpack_partner_data', 'my_jetpack_product_activated', 'jetpack_is_single_user', 'jetpack_plugin_api_action_links_refresh', 'update_core', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%excluded_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%color_theme';
DELETE FROM wp_options WHERE option_name LIKE '%inf_scroll';
DELETE FROM wp_options WHERE option_name LIKE '%filtering_opens_overlay';
DELETE FROM wp_options WHERE option_name LIKE '%show_post_date';
DELETE FROM wp_options WHERE option_name LIKE '%enable_sort';
DELETE FROM wp_options WHERE option_name LIKE '%highlight_color';
DELETE FROM wp_options WHERE option_name LIKE '%overlay_trigger';
DELETE FROM wp_options WHERE option_name LIKE '%result_format';
DELETE FROM wp_options WHERE option_name LIKE '%show_powered_by';
DELETE FROM wp_options WHERE option_name LIKE '%default_sort';
DELETE FROM wp_options WHERE option_name LIKE '%sync';
DELETE FROM wp_options WHERE option_name LIKE '%full_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_full_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_full-sync-enqueue';
DELETE FROM wp_options WHERE option_name LIKE 'jetpack_constant_%';
DELETE FROM wp_options WHERE option_name LIKE 'jetpack_%';
DELETE FROM wp_options WHERE option_name LIKE 'jetpack_network_%';
DELETE FROM wp_options WHERE option_name LIKE '%immediate-send';
DELETE FROM wp_options WHERE option_name LIKE 'jetpack_idc_ip_requester_%';
DELETE FROM wp_options WHERE option_name LIKE 'update_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout', 'first_name', 'last_name', 'nickname', '_new_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout', 'first_name', 'last_name', 'nickname', '_new_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout', 'first_name', 'last_name', 'nickname', '_new_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout', 'first_name', 'last_name', 'nickname', '_new_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%';

