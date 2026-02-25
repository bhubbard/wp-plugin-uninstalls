-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('medium_large_size_w', 'medium_large_size_h', 'wposs_options');

