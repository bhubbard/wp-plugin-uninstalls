-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcis_enable_rewrite_cats', 'autocomplete_version', 'wcis_site_id', 'wcis_general_settings', 'serp_config', 'serp_version', 'category_version', 'authentication_key', 'wcis_enable_rewrite_links', 'wcis_serp_page_name', 'rewrite_rules', 'isp_wpml_languages', 'wcis_user_email', 'is_activation_triggered', 'cron_category_list', 'wcis_timeframe', 'cron_in_progress', 'wcis_batch_size', 'max_num_of_batches', 'wcis_taxonomies', 'wcis_acf_fields', 'cron_product_list', 'cron_update_product_list_by_date', 'cron_send_batches_disable', 'wcis_enable_highlight', 'wcis_just_created_alert', 'wcis_site_alert', 'wcis_site_notification');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', 'thumbnail_id', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', 'thumbnail_id', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', 'thumbnail_id', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', 'thumbnail_id', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

