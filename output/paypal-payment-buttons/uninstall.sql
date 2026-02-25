-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stats_options', 'jetpack_activation_source', 'jetpack_affiliate_code', 'jetpack_partner_subsidiary_id', 'jetpack_offline_mode', 'vaultpress', 'vaultpress_auto_register', 'jetpack_sso_remove_login_form', 'jetpack_sso_match_by_email', 'jetpack_sso_require_two_step', 'jetpack_protect_active', 'wpcom_public_coming_soon', 'has_jetpack_search_product', 'jetpack_assumed_site_creation_date', 'jetpack_idc_possible_dynamic_site_url_detected', 'jetpack_idc_local', 'jetpack_is_single_user');
DELETE FROM wp_options WHERE option_name LIKE 'jetpack_idc_ip_requester_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout', 'spay_multiple', 'spay_cta', 'spay_price', 'spay_currency', 'spay_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout', 'spay_multiple', 'spay_cta', 'spay_price', 'spay_currency', 'spay_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout', 'spay_multiple', 'spay_cta', 'spay_price', 'spay_currency', 'spay_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout', 'spay_multiple', 'spay_cta', 'spay_price', 'spay_currency', 'spay_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%';

