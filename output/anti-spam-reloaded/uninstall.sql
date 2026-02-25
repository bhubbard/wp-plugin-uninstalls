-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('antispamrel_settings', 'antispamrel_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('antispamrel_info_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('antispamrel_info_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('antispamrel_info_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('antispamrel_info_visibility');

