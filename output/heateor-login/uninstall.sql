-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('heateor_fbl_version', 'heateor_fbl', 'heateor-fbl-admin-notice-on-activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('heateor_fbl_redirect_url', 'heateor_fbl_gdpr_consent', 'heateor_fbl_dontupdate_avatar', 'heateor_fbl_avatar', 'heateor_fbl_large_avatar', 'heateor_fbl_id', 'heateor_fbl_temp_userdata');
DELETE FROM wp_usermeta WHERE meta_key IN ('heateor_fbl_redirect_url', 'heateor_fbl_gdpr_consent', 'heateor_fbl_dontupdate_avatar', 'heateor_fbl_avatar', 'heateor_fbl_large_avatar', 'heateor_fbl_id', 'heateor_fbl_temp_userdata');
DELETE FROM wp_termmeta WHERE meta_key IN ('heateor_fbl_redirect_url', 'heateor_fbl_gdpr_consent', 'heateor_fbl_dontupdate_avatar', 'heateor_fbl_avatar', 'heateor_fbl_large_avatar', 'heateor_fbl_id', 'heateor_fbl_temp_userdata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('heateor_fbl_redirect_url', 'heateor_fbl_gdpr_consent', 'heateor_fbl_dontupdate_avatar', 'heateor_fbl_avatar', 'heateor_fbl_large_avatar', 'heateor_fbl_id', 'heateor_fbl_temp_userdata');

