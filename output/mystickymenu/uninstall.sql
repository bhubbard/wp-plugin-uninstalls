-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mysticky_option_welcomebar', 'hide_mystickymenu_cta', 'mysticky_option_name', 'poptin_id', 'hide_msmrecommended_plugin', 'get_mystickybar_page_views', 'my-sticky-menu_hide_review_box', 'my-sticky-menu_show_review_box_after', 'mystickymenu_intro_box', 'mystickymenu-welcomebars', 'msm_redirection', 'has_sticky_header_old_version', 'sticky_header_status', 'update_mysticky_version_2_6', 'update_mysticky_version_2_5_7', 'msb_cl_widget_id_exists');
DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after';
DELETE FROM wp_options WHERE option_name LIKE 'mysticky_option_welcomebar%';

