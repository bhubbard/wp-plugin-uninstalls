-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('real_id_license_key', 'real_id_sandbox_license_key', 'real_id_delivery_methods', 'real_id_sandbox_mode', 'real_id_localhost_notice_dismissed', 'real_id_shop', 'real_id_shop_public_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'real_id_check_status', 'real_id_check_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'real_id_check_status', 'real_id_check_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'real_id_check_status', 'real_id_check_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'real_id_check_status', 'real_id_check_id');

