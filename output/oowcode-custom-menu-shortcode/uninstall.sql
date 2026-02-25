-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oow_dismissed_notice_elementor', 'oow_dismissed_notice_divi', 'oow_dismissed_notice_wpbakery', 'oowcode_admin_theme');
DELETE FROM wp_options WHERE option_name LIKE 'oow_dismissed_notice_%';

