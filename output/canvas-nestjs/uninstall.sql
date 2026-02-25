-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cn_setting_ishome', 'cn_setting_isarchive', 'cn_setting_issingular', 'cn_setting_issearch', 'cn_setting_is404', 'cn_setting_color', 'cn_setting_opacity', 'cn_setting_count', 'cn_setting_zindex');

