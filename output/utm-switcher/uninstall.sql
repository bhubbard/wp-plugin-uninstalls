-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carbon_custom_sidebars');
DELETE FROM wp_options WHERE option_name LIKE '%-lat';
DELETE FROM wp_options WHERE option_name LIKE '%-lng';
DELETE FROM wp_options WHERE option_name LIKE '%-address';
DELETE FROM wp_options WHERE option_name LIKE '%-zoom';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-lat';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-lat';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-lat';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-lat';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-lng';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-lng';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-lng';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-lng';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-address';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-zoom';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-zoom';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-zoom';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-zoom';

