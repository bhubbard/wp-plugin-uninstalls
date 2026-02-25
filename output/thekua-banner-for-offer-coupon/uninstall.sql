-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_tab_thekua_o_banner_url', 'wc_settings_tab_thekua_o_banner_width');

