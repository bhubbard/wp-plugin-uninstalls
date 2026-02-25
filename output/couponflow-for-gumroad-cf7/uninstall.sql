-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7g_gumroad_settings', '_cf7g_coupon_log');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7g_gumroad_settings', '_cf7g_coupon_log');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7g_gumroad_settings', '_cf7g_coupon_log');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7g_gumroad_settings', '_cf7g_coupon_log');

