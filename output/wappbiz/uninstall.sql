-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wappbiz_vendor_type', 'wappbiz_enabled_events', 'wappbiz_send_vendor_notifications');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcfmmp_profile_settings', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcfmmp_profile_settings', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcfmmp_profile_settings', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcfmmp_profile_settings', 'billing_phone');

