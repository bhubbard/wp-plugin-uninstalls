-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bookling_website', 'bookonline_width', 'bookonline_height', 'bookonline_alignment');

