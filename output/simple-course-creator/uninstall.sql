-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('course_display_settings', 'display_position', 'list_type', 'scc_orderby', 'scc_order', 'current_post');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

