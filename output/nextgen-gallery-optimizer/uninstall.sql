-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nextgen_optimizer_settings', 'nextgen_gallery_optimizer_basic_settings');

