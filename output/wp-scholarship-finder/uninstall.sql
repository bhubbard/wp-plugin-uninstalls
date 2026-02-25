-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('search_box_heading', 'search_button_name', 'no_of_pages_counter');

