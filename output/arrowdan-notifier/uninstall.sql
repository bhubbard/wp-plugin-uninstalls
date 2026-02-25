-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afcmpn_disable', 'afcmpn_api', 'afcmpn_disable_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('send-fcm-checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('send-fcm-checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('send-fcm-checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('send-fcm-checkbox');

