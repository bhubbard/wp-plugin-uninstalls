-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'ivrita_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ivrita_post_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ivrita_post_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ivrita_post_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ivrita_post_%';

