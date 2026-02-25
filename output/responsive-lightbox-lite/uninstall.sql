-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('responsive_lightbox_lite_version', 'responsive_lightbox_lite_settings');

