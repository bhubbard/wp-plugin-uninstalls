-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liquidizer_lite_wp_navigationbar', 'liquidizer_lite_wp_which_navigationbar_element', 'liquidizer_lite_wp_navigationbar_width', 'liquidizer_lite_wp_navcolor', 'liquidizer_lite_wp_navselect', 'liquidizer_lite_wp_home', 'liquidizer_lite_wp_info', 'liquidizer_lite_wp_contact');

