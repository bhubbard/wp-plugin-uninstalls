-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('domain_for_sale_version', 'domain_for_sale_first_version', 'domain_for_sale_activation_date', 'domain_for_sale_db_version', 'dfs-opt', 'domain_for_sale_review_notice_dismiss', 'themeatelier_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dfs_template_options', 'dfs_layouts', 'domain_for_sale_view_options', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('dfs_template_options', 'dfs_layouts', 'domain_for_sale_view_options', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('dfs_template_options', 'dfs_layouts', 'domain_for_sale_view_options', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dfs_template_options', 'dfs_layouts', 'domain_for_sale_view_options', 'first_name', 'last_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_dfs_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_dfs_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_dfs_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dfs_errors_%';

