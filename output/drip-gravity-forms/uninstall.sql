-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_drip_version', 'gf_drip_settings', 'gfp_drip_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gfp_drip_dismiss_menu', 'gfp_drip_field_guide');
DELETE FROM wp_usermeta WHERE meta_key IN ('gfp_drip_dismiss_menu', 'gfp_drip_field_guide');
DELETE FROM wp_termmeta WHERE meta_key IN ('gfp_drip_dismiss_menu', 'gfp_drip_field_guide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gfp_drip_dismiss_menu', 'gfp_drip_field_guide');

