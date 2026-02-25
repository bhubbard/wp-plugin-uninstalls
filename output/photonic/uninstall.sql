-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('photonic_options', 'photonic_authentication', 'photonic_css');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_token';
DELETE FROM wp_options WHERE option_name LIKE 'photonic_deviantart_refresh_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'photonic_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'photonic_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'photonic_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'photonic_%';

