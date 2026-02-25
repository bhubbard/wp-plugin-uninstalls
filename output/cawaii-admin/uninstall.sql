-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bg_css', 'bg_at', 'color_css', 'menu_pattern', 'cawaii_header_logo', 'cawaii_login_logo', 'cawaii_dshbrd_metaboxes', 'cawaii_post_metaboxes', 'force_default_login_logo', 'force_default_header_logo');

