-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nextgen_gallery_colorboxer_settings', 'ngg_options');

