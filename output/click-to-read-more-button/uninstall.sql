-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('click_to_read_more_button_options', 'click_to_read_more_button_show_activation_notice');

