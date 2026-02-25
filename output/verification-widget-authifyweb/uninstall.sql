-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vwfaw_authifyweb_profile_link', 'vwfaw_add_link_to_head', 'vwfaw_widget_behavior');

