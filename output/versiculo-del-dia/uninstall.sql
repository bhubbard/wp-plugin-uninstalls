-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vdd_language', 'vdd_select_version', 'vdd_show_priority_version', 'vdd_link_verse', 'vdd_show_image_if_available');

