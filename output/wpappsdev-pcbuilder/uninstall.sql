-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpadpcbu_pages_created', 'page_settings', 'wpadpcbu_version', 'wpadpcbu_installed', 'wpadpcbu_flush_rewrite');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpadpcbu_pcbuilder_settings', 'wpadpcbu_component_filters_group', 'wpadpcbu_component_filter_list', 'component-image-id', 'wpadpcbu_component_serial', 'wpadpcbu_required_component', 'wpadpcbu_product_features_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpadpcbu_pcbuilder_settings', 'wpadpcbu_component_filters_group', 'wpadpcbu_component_filter_list', 'component-image-id', 'wpadpcbu_component_serial', 'wpadpcbu_required_component', 'wpadpcbu_product_features_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpadpcbu_pcbuilder_settings', 'wpadpcbu_component_filters_group', 'wpadpcbu_component_filter_list', 'component-image-id', 'wpadpcbu_component_serial', 'wpadpcbu_required_component', 'wpadpcbu_product_features_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpadpcbu_pcbuilder_settings', 'wpadpcbu_component_filters_group', 'wpadpcbu_component_filter_list', 'component-image-id', 'wpadpcbu_component_serial', 'wpadpcbu_required_component', 'wpadpcbu_product_features_list');

