-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liquidizer_lite_wp_table', 'liquidizer_lite_wp_which_table_element', 'liquidizer_lite_wp_table_width', 'liquidizer_lite_header_selector', 'liquidizer_lite_bodyrow_selector');

