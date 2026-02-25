-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcfg_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcfg_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcfg_config');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcfg_config');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcfg_config');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcfg_config');

