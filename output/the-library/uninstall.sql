-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wprl_download_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'phone', '_wprl_file_data', '_wprl_file_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'phone', '_wprl_file_data', '_wprl_file_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'phone', '_wprl_file_data', '_wprl_file_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'phone', '_wprl_file_data', '_wprl_file_type');

