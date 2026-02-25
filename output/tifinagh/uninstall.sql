-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fu_header_font', 'fu_body_font', 'fu_lists_font', 'fu_custom_one_font', 'fu_custom_one', 'fu_custom_two_font', 'fu_custom_two', 'fu_custom_three_font', 'fu_custom_three', 'fu_custom_four_font', 'fu_custom_four', 'fu_custom_five_font', 'fu_custom_five');

