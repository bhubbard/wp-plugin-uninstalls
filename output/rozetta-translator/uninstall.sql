-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%accessKey';
DELETE FROM wp_options WHERE option_name LIKE '%secretKey';
DELETE FROM wp_options WHERE option_name LIKE '%contractId';
DELETE FROM wp_options WHERE option_name LIKE '%customPostType';
DELETE FROM wp_options WHERE option_name LIKE '%activeLangs';
DELETE FROM wp_options WHERE option_name LIKE '%enableMultilingual';
DELETE FROM wp_options WHERE option_name LIKE '%customMenuCss';
DELETE FROM wp_options WHERE option_name LIKE '%activeCollapse';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rozetta_locale', '_rozetta_original_post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rozetta_locale', '_rozetta_original_post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rozetta_locale', '_rozetta_original_post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rozetta_locale', '_rozetta_original_post_id');

