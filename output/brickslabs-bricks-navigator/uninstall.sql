-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brickslabs_bricks_navigator_show_in_editor', 'brickslabs_bricks_navigator_show_community_menu', 'brickslabs_bricks_navigator_show_thirdparty_plugins', 'brickslabs_bricks_navigator_show_bricks_internal', 'brickslabs_bricks_navigator_show_bricks_external');

