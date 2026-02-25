-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lasso_license_email', 'lasso_lite_license_status', 'prlipro_options', 'wp_rocket_settings', 'aawp_output', 'eafl_settings', 'lasso_lite_license_email', 'lasso_lite_end_date', 'lasso_lite_license_hash', 'lassolite_settings', 'lasso_lite_disable_processes', 'rewrite_rules', 'aawp_api', 'amalinkspro-options_amazon_api_access_key', 'amalinkspro-options_amazon_api_secret_key', 'amalinkspro-options_default_amazon_search_locale', 'License_hash');
DELETE FROM wp_options WHERE option_name LIKE '%_page_title';
DELETE FROM wp_options WHERE option_name LIKE '%_total_count';
DELETE FROM wp_options WHERE option_name LIKE '%_start_time';
DELETE FROM wp_options WHERE option_name LIKE '%_process_running_time';
DELETE FROM wp_options WHERE option_name LIKE '%_amazon_associate_ids_0_associate_id';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_surl_redirect', 'amazon_product_id', 'affiliate_link_type', '_ta_destination_url', '_ta_rel_tags', '_ta_image_ids', '_earn_url', '_earn_description', '_earn_price', '_earn_button_text', '_earn_image_url', '_affiliate_url_redirect', 'buy_btn_text', 'price', 'lasso_thumbnail_id', 'lasso_custom_thumbnail', 'affiliate_desc', 'open_new_tab', 'enable_nofollow', 'enable_sponsored', 'show_disclosure', 'badge_text', 'eafl_url', 'eafl_target', 'eafl_description', 'eafl_nofollow', 'eafl_sponsored', '_surl_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_surl_redirect', 'amazon_product_id', 'affiliate_link_type', '_ta_destination_url', '_ta_rel_tags', '_ta_image_ids', '_earn_url', '_earn_description', '_earn_price', '_earn_button_text', '_earn_image_url', '_affiliate_url_redirect', 'buy_btn_text', 'price', 'lasso_thumbnail_id', 'lasso_custom_thumbnail', 'affiliate_desc', 'open_new_tab', 'enable_nofollow', 'enable_sponsored', 'show_disclosure', 'badge_text', 'eafl_url', 'eafl_target', 'eafl_description', 'eafl_nofollow', 'eafl_sponsored', '_surl_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_surl_redirect', 'amazon_product_id', 'affiliate_link_type', '_ta_destination_url', '_ta_rel_tags', '_ta_image_ids', '_earn_url', '_earn_description', '_earn_price', '_earn_button_text', '_earn_image_url', '_affiliate_url_redirect', 'buy_btn_text', 'price', 'lasso_thumbnail_id', 'lasso_custom_thumbnail', 'affiliate_desc', 'open_new_tab', 'enable_nofollow', 'enable_sponsored', 'show_disclosure', 'badge_text', 'eafl_url', 'eafl_target', 'eafl_description', 'eafl_nofollow', 'eafl_sponsored', '_surl_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_surl_redirect', 'amazon_product_id', 'affiliate_link_type', '_ta_destination_url', '_ta_rel_tags', '_ta_image_ids', '_earn_url', '_earn_description', '_earn_price', '_earn_button_text', '_earn_image_url', '_affiliate_url_redirect', 'buy_btn_text', 'price', 'lasso_thumbnail_id', 'lasso_custom_thumbnail', 'affiliate_desc', 'open_new_tab', 'enable_nofollow', 'enable_sponsored', 'show_disclosure', 'badge_text', 'eafl_url', 'eafl_target', 'eafl_description', 'eafl_nofollow', 'eafl_sponsored', '_surl_count');

