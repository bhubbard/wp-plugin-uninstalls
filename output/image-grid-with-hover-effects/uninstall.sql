-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wg_ighe_activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%shortcode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%shortcode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%shortcode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%shortcode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%grid_item';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%grid_item';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%grid_item';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%grid_item';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%delay';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%delay';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%delay';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%delay';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%inverse';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%inverse';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%inverse';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%inverse';

