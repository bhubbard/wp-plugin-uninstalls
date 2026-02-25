-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fcmdpplgpn_api', 'fcmdpplgpn_channel', 'fcmdpplgpn_topic', 'fcmdpplgpn_sound', 'fcmdpplgpn_default_image', 'fcmdpplgpn_custom_fields', 'fcmdpplgpn_disable', 'fcmdpplgpn_page_disable');
DELETE FROM wp_options WHERE option_name LIKE 'fcmdpplgpn_posttype_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('send-fcm-checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('send-fcm-checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('send-fcm-checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('send-fcm-checkbox');

