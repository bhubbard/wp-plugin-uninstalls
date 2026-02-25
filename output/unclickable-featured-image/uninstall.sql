-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unclickable_options_hook', 'unclickable_options_select', 'unclickable_options_thumbnail', 'unclickable_options_selector', 'unclickable_options_all', 'unclickable_options_link', 'unclickable_options_img', 'unclickable_options_background');

