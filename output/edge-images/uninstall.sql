-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edge_images_rewrite_rules_flushed', 'edge_images_bunny_subdomain', 'edge_images_settings');
DELETE FROM wp_options WHERE option_name LIKE 'edge_images_css_%';

