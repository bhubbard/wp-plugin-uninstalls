-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_apop_normal_order', '_apop_normal_order_param', '_apop_search_order', '_apop_search_order_param', '_apop_custompost_archive_order_param', '_apop_tax_order_param', '_apop_custompost_archive_sort_type', '_apop_tax_sort_type', '_apop_per_page', '_apop_custompost_archive_order');
DELETE FROM wp_options WHERE option_name LIKE '%_order';
DELETE FROM wp_options WHERE option_name LIKE '%_order_param';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_apop_post_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_apop_post_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_apop_post_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_apop_post_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_apop_customposts_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_apop_customposts_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_apop_customposts_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_apop_customposts_%';

