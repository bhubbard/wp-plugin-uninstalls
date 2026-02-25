-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcsa_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcsa_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcsa_id', 'wpcsa_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcsa_id', 'wpcsa_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcsa_id', 'wpcsa_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcsa_id', 'wpcsa_key');

