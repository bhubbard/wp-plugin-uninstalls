-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snpm_general');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'blockchain_network_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'blockchain_network_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'blockchain_network_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'blockchain_network_%';

