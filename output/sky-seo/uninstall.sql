-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sky_seo', ' . $this->sky_fields . ');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%keyword';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%keyword';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%keyword';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%keyword';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%background';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%background';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%background';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%background';

