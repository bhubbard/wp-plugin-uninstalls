-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('toffeepress_api_key', 'toffeepress_quality', 'toffeepress_keep_originals');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tp_compressed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tp_compressed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tp_compressed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tp_compressed_%';

