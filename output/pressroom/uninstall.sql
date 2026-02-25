-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pr_settings', 'pr_theme_root', 'pr_theme_uri', 'pressroom_themes', 'p2p_storage', '_pr_table_db_version', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_term_%';
DELETE FROM wp_options WHERE option_name LIKE 'pr_valid_license_%';
DELETE FROM wp_options WHERE option_name LIKE 'pr_preview_linked_query_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pr_sharing_url', '_pr_theme_select', '_pr_web_override_eproject', '_pr_package_date', '_pr_package_updated_date', '_pr_html_file', '_pr_zip', '_pr_packager_type', '_pr_edition_free', '_pr_index_height', '_pr_date', '_pr_subscriptions_select', '_pr_newsstand_issue_cover');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pr_sharing_url', '_pr_theme_select', '_pr_web_override_eproject', '_pr_package_date', '_pr_package_updated_date', '_pr_html_file', '_pr_zip', '_pr_packager_type', '_pr_edition_free', '_pr_index_height', '_pr_date', '_pr_subscriptions_select', '_pr_newsstand_issue_cover');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pr_sharing_url', '_pr_theme_select', '_pr_web_override_eproject', '_pr_package_date', '_pr_package_updated_date', '_pr_html_file', '_pr_zip', '_pr_packager_type', '_pr_edition_free', '_pr_index_height', '_pr_date', '_pr_subscriptions_select', '_pr_newsstand_issue_cover');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pr_sharing_url', '_pr_theme_select', '_pr_web_override_eproject', '_pr_package_date', '_pr_package_updated_date', '_pr_html_file', '_pr_zip', '_pr_packager_type', '_pr_edition_free', '_pr_index_height', '_pr_date', '_pr_subscriptions_select', '_pr_newsstand_issue_cover');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'pr_addons_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'pr_addons_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'pr_addons_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pr_addons_notice_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'pr_themes_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'pr_themes_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'pr_themes_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pr_themes_notice_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pr_product_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pr_product_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pr_product_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pr_product_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pr_edition_hpub_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pr_edition_hpub_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pr_edition_hpub_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pr_edition_hpub_%';

