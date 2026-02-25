-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fatcloud_width', 'fatcloud_height', 'fatcloud_netlife_link', 'fatcloud_skin');
DELETE FROM wp_options WHERE option_name LIKE 'fatcloud_%';

