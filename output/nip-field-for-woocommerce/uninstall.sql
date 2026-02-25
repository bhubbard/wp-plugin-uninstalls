-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nip_field_wc_settings', 'nip_field_wc_gus', 'nip_field_wc_messages', 'nip_field_wc_banner_dismissed', 'nip_field_wc_banner_remind_later', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_nip', '_billing_nip');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_nip', '_billing_nip');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_nip', '_billing_nip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_nip', '_billing_nip');

