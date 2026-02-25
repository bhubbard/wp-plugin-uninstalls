-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmf-setting', 'mmf-setting-admin', 'mmf-setting-ios', 'mmf-setting-iosflat', 'mmf-setting-androidhirez', 'mmf-setting-androidreg');

