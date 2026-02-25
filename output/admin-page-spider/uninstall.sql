-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apspider_gutenberg_editmenu_name', 'apspider_radio_editmenu', 'apspider_gutenberg_radio_editmenu', 'apspp_radio_viewposts');

