-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcs_slider_settings', 'rcs_upgrade_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rcs_slider_options', '_rcs_slider_slide');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rcs_slider_options', '_rcs_slider_slide');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rcs_slider_options', '_rcs_slider_slide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rcs_slider_options', '_rcs_slider_slide');

