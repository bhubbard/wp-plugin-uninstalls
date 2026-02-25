-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_keywords';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_keywords';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_keywords';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_keywords';

