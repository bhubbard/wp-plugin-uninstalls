-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('direktt_qr_code_logo_url', 'direktt_qr_code_color', 'direktt_qr_code_bckg_color', 'direktt_pairing_prefix', 'direktt_api_key', 'direktt_channel_title', 'direktt_channel_id', 'direktt_unauthorized_redirect_url', 'direktt_timestamp_display_format', 'direktt_pairing_succ_template', 'direktt_registered_domain');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('direktt_test_user_id', 'direktt_user_pair_code', 'direktt_user_id', 'direktt_custom_box', 'direktt_custom_admin_box', 'direktt_user_categories', 'direktt_user_tags', 'direkttMTJson', 'direkttMTType', 'direktt_marketing_consent_status', 'direktt_admin_subscription', 'direktt_membership_id', 'direktt_avatar_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('direktt_test_user_id', 'direktt_user_pair_code', 'direktt_user_id', 'direktt_custom_box', 'direktt_custom_admin_box', 'direktt_user_categories', 'direktt_user_tags', 'direkttMTJson', 'direkttMTType', 'direktt_marketing_consent_status', 'direktt_admin_subscription', 'direktt_membership_id', 'direktt_avatar_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('direktt_test_user_id', 'direktt_user_pair_code', 'direktt_user_id', 'direktt_custom_box', 'direktt_custom_admin_box', 'direktt_user_categories', 'direktt_user_tags', 'direkttMTJson', 'direkttMTType', 'direktt_marketing_consent_status', 'direktt_admin_subscription', 'direktt_membership_id', 'direktt_avatar_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('direktt_test_user_id', 'direktt_user_pair_code', 'direktt_user_id', 'direktt_custom_box', 'direktt_custom_admin_box', 'direktt_user_categories', 'direktt_user_tags', 'direkttMTJson', 'direkttMTType', 'direktt_marketing_consent_status', 'direktt_admin_subscription', 'direktt_membership_id', 'direktt_avatar_url');

