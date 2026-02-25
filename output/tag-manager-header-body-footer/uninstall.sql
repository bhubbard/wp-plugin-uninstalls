-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yydev_tag_mangage_wp_body_open', 'yydev_tagmanager_main_menu', 'yydev_stop_plugins_notice');

