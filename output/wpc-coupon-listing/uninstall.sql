-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpccl_settings', 'wpccl_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpccl_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpccl_public');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpccl_public');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpccl_public');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpccl_public');

