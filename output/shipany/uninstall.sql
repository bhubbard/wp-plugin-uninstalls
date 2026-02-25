-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_shipany_service_locations_forbidden', 'woocommerce_shipany_ecs_asia_settings', 'order_list_counter', '_shipany_bulk_action_confirmation', 'shipany_permalinks_flushed', 'shipany-selected-locationtype', 'shipany-selected-locationID', '_shipany_auth_token_rest');
DELETE FROM wp_options WHERE option_name LIKE 'shipany_handover_order_ids_%';
DELETE FROM wp_options WHERE option_name LIKE '_shipany_bulk_download_labels_file_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pr_shipment_shipany_label_tracking', '_shipany_export_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pr_shipment_shipany_label_tracking', '_shipany_export_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pr_shipment_shipany_label_tracking', '_shipany_export_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pr_shipment_shipany_label_tracking', '_shipany_export_description');

