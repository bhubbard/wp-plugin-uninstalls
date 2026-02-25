-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('documentcloud_default_height', 'documentcloud_default_width', 'documentcloud_full_width');

