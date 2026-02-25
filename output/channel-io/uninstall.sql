-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('channel_io_plugin_key', 'channel_io_secret_key', 'channel_io_hide_default_launcher', 'channel_io_mobile_messenger_mode', 'channel_io_z_index', 'channel_io_custom_launcher_selector', 'channel_io_member_hash');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone');

