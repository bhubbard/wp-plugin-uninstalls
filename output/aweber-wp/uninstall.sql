-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'fca_eoi_settings', 'paf', 'fca_eoi_license_key', 'fca_eoi_allow_customform', 'fca_eoi_last_provider', 'fca_eoi_last_form_meta', 'fca_eoi_dismiss_review', 'fca_eoi_license_status', 'fca_eoi_subscribers_table_ver', 'fca_eoi_comment_optin_settings', 'fca_eoi_comment_optin_post', 'easy_opt_in_oath_infor_settings', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'fca_eoi_api_aweber_credentials_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fca_eoi', 'fca_eoi_animation', 'fca_eoi_meta_format', 'fca_eoi_head', 'fca_eoi_layout', 'fca_eoi_provider');
DELETE FROM wp_usermeta WHERE meta_key IN ('fca_eoi', 'fca_eoi_animation', 'fca_eoi_meta_format', 'fca_eoi_head', 'fca_eoi_layout', 'fca_eoi_provider');
DELETE FROM wp_termmeta WHERE meta_key IN ('fca_eoi', 'fca_eoi_animation', 'fca_eoi_meta_format', 'fca_eoi_head', 'fca_eoi_layout', 'fca_eoi_provider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fca_eoi', 'fca_eoi_animation', 'fca_eoi_meta_format', 'fca_eoi_head', 'fca_eoi_layout', 'fca_eoi_provider');

