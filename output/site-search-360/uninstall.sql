-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss360_siteId', 'ss360_api_token', 'ss360_pluginConfigId', 'ss360_category_filter_id', 'ss360_tag_filter_id', 'ss360_data_points', 'ss360_renamed_dp', 'ss360_inactive_dp', 'ss360_acf_def', 'ss360_indexing_mode', 'ss360_woocommerce_categories', 'ss360_price_filter_id', 'ss360_woocommerce_filters', 'ss360_sync_on_save', 'ss360_sync_on_status', 'ss360_sync_on_future', 'ss360_sync_on_delete', 'ss360_review_interaction', 'ss360_selected_menus', 'ss360_plugin_version', 'ss360_sr_type', 'ss360_account_created', 'ss360_is_configured', 'ss360_is_indexed', 'ss360_old_indexing_notice', 'ss360_password', 'ss360_installation_id', 'ss360_last_upgrade_request_ts', 'ss360_config', 'ss360_callbacks', 'ss360_page_limit', 'ss360_rate_checker', 'ss360_active_plan', 'ss360_inject_search', 'ss360_config_modifications');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_price', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_price', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_price', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_price', '_product_attributes');

