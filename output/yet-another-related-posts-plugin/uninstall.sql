-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yarpp_pro', 'yarpp', 'active_sitewide_plugins', 'yarpp_fulltext_disabled', 'yarpp_version', 'yarpp_activated', 'yarpp_upgraded', 'yarpp_version_info', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_timeout';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yarpp_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('yarpp_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('yarpp_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yarpp_meta');

