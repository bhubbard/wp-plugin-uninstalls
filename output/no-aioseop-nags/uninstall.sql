-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('no_aioseop_nags_custom_css', 'no_aioseop_nags_custom_css-checkbox', 'no_aioseop_nags_your_custom_css', 'no_aioseop_nags_your_custom-checkbox', 'no_aioseop_nags_menu-checkbox', 'no_aioseop_nags_yoast', 'no_aioseop_nags_all_messages', 'abl_no_aioseop_nags_version', 'dismissed-prefix_deprecated');

