-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_tab_hide_coupons_roles');
DELETE FROM wp_options WHERE option_name LIKE 'wc_settings_tab_hide_coupons_message_%';

