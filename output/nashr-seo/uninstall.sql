-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mnbaa_seo_screens', 'mnbaa_seo_private_update', 'license_key');
DELETE FROM wp_options WHERE option_name LIKE '%description';
DELETE FROM wp_options WHERE option_name LIKE '%_archive';
DELETE FROM wp_options WHERE option_name LIKE '%title';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mnbaa_seo_description', 'mnbaa_seo_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('mnbaa_seo_description', 'mnbaa_seo_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('mnbaa_seo_description', 'mnbaa_seo_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mnbaa_seo_description', 'mnbaa_seo_title');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%title';

