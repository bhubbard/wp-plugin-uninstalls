-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ksr_deletion', 'ksr_bg_color', 'ksr_mouseenter_color', 'ksr_currentrate_color', 'ksr_star_size', 'ksr_star_design');

