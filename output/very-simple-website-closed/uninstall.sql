-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vswc-setting-16', 'vswc-setting-1', 'vswc-setting-15', 'vswc-setting-2', 'vswc-setting-3', 'vswc-setting-4', 'vswc-setting-5', 'vswc-setting-6', 'vswc-setting-7', 'vswc-setting-8', 'vswc-setting-22', 'vswc-setting-13', 'vswc-setting-14', 'vswc-setting-9', 'vswc-setting-23', 'vswc-setting-20', 'vswc-setting-10', 'vswc-setting-11', 'vswc-setting-18', 'vswc-setting-19', 'vswc-setting-12', 'vswc-setting-17', 'vswc-setting-21');

