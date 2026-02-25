-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xos_options', 'wpcos_options', 'medium_large_size_w', 'medium_large_size_h');

