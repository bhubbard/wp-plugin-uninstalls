-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tonjoo_ecae_options', 'ecae_ignore_notice', 'ecae_later_date', 'ecae_start_date', 'tonjoo_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ecae_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('ecae_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('ecae_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ecae_meta');

