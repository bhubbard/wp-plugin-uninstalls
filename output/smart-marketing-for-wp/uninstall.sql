-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_error_status', 'egoi_api_key', 'transactional_email_option', 'transactional_email_error_option', 'egoi_int', 'egoi_transactional_email', 'egoi_mapping', 'egoi_data', 'egoi_webpush_code', 'egoi_catalog_sync', 'egoi_catalogs_options', 'egoi_import_bypass', 'egoi_notifications', 'egoi_sms_counter', 'egoi_sync', 'egoi_client', 'egoi_client_allow', 'egoi_client_kill', 'egoi_client_type', 'egoi_widget', 'woocommerce_default_country', 'woocommerce_currency', 'egoi_has_list', 'woocommerce_email_body_background_color', 'woocommerce_email_base_color', 'woocommerce_email_background_color', 'woocommerce_email_text_color', 'egoi_store_catalogs', 'widget_egoi4widget', 'egoi_mapping_gf', 'egoi_tag_function', 'woocommerce_version', 'egoi_campaigns_error', 'egoi_information_cache', 'egoi_ok1');
DELETE FROM wp_options WHERE option_name LIKE 'egoi_rssfeed_%';
DELETE FROM wp_options WHERE option_name LIKE 'egoi_simple_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'egoi_form_sync_%';
DELETE FROM wp_options WHERE option_name LIKE 'egoi_simple_form_post_increment_%';
DELETE FROM wp_options WHERE option_name LIKE 'egoi_simple_form_post_%';
DELETE FROM wp_options WHERE option_name LIKE 'egoi_email_campaign_%';
DELETE FROM wp_options WHERE option_name LIKE 'egoi_webpush_campaign_%';
DELETE FROM wp_options WHERE option_name LIKE 'egoi_popup_%';
DELETE FROM wp_options WHERE option_name LIKE 'egoi_validator_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('check_newsletter', '_sku', '_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_upsell_ids', '_crosssell_ids', '_manage_stock', '_stock', '_stock_status', '_weight', '_length', '_width', '_height', '_virtual', '_downloadable', '_download_limit', '_download_expiry', 'egoi_newsletter_active', '_egoi_gtin', '_egoi_brand', 'email_campaign_widget', 'email_campaign_widget_modify_content', 'email_campaign_widget_custom_content', 'email_campaign_widget_custom_heading', 'email_campaign_widget_sender', 'email_campaign_widget_list_contacts', 'webpush_campaign_widget', 'webpush_campaign_widget_modify_content', 'webpush_campaign_widget_custom_content', 'webpush_campaign_widget_custom_heading', 'webpush_campaign_widget_site_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('check_newsletter', '_sku', '_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_upsell_ids', '_crosssell_ids', '_manage_stock', '_stock', '_stock_status', '_weight', '_length', '_width', '_height', '_virtual', '_downloadable', '_download_limit', '_download_expiry', 'egoi_newsletter_active', '_egoi_gtin', '_egoi_brand', 'email_campaign_widget', 'email_campaign_widget_modify_content', 'email_campaign_widget_custom_content', 'email_campaign_widget_custom_heading', 'email_campaign_widget_sender', 'email_campaign_widget_list_contacts', 'webpush_campaign_widget', 'webpush_campaign_widget_modify_content', 'webpush_campaign_widget_custom_content', 'webpush_campaign_widget_custom_heading', 'webpush_campaign_widget_site_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('check_newsletter', '_sku', '_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_upsell_ids', '_crosssell_ids', '_manage_stock', '_stock', '_stock_status', '_weight', '_length', '_width', '_height', '_virtual', '_downloadable', '_download_limit', '_download_expiry', 'egoi_newsletter_active', '_egoi_gtin', '_egoi_brand', 'email_campaign_widget', 'email_campaign_widget_modify_content', 'email_campaign_widget_custom_content', 'email_campaign_widget_custom_heading', 'email_campaign_widget_sender', 'email_campaign_widget_list_contacts', 'webpush_campaign_widget', 'webpush_campaign_widget_modify_content', 'webpush_campaign_widget_custom_content', 'webpush_campaign_widget_custom_heading', 'webpush_campaign_widget_site_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('check_newsletter', '_sku', '_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_upsell_ids', '_crosssell_ids', '_manage_stock', '_stock', '_stock_status', '_weight', '_length', '_width', '_height', '_virtual', '_downloadable', '_download_limit', '_download_expiry', 'egoi_newsletter_active', '_egoi_gtin', '_egoi_brand', 'email_campaign_widget', 'email_campaign_widget_modify_content', 'email_campaign_widget_custom_content', 'email_campaign_widget_custom_heading', 'email_campaign_widget_sender', 'email_campaign_widget_list_contacts', 'webpush_campaign_widget', 'webpush_campaign_widget_modify_content', 'webpush_campaign_widget_custom_content', 'webpush_campaign_widget_custom_heading', 'webpush_campaign_widget_site_info');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget_list_contacts';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget_list_contacts';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget_list_contacts';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget_list_contacts';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget_modify_content';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget_modify_content';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget_modify_content';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget_modify_content';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget_custom_heading';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget_custom_heading';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget_custom_heading';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget_custom_heading';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget_custom_content';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget_custom_content';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget_custom_content';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget_custom_content';

