-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'size_chart_chekbox', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phoen_chart_table', 'phoen_metaboxes_product', '_table_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('phoen_chart_table', 'phoen_metaboxes_product', '_table_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('phoen_chart_table', 'phoen_metaboxes_product', '_table_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phoen_chart_table', 'phoen_metaboxes_product', '_table_meta');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

