-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uber_direct_mode', 'uber_direct_client_id', 'uber_direct_secret_id', 'uber_direct_access_token', 'uber_direct_undeliverable_action', 'uber_direct_deliverable_action', 'uber_direct_pin_verification', 'uber_direct_high_value_threshold', 'uber_direct_enable_testing', 'uber_direct_pickup_verification', 'uber_direct_dropoff_verification', 'uber_direct_asap_prep_minutes', 'uber_direct_root_org_id', 'uber_direct_webhook_enabled', 'uber_direct_webhook_signing_key', 'uber_direct_enable_asap', 'uber_direct_enable_scheduled', 'woocommerce_currency_pos', 'uber_direct_schedule_max_days', 'uber_direct_schedule_min_time', 'uber_direct_schedule_max_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_uber_direct_delivery_type', '_uber_scheduled_date', '_uber_scheduled_time', '_uber_direct_tracking_url', '_uber_direct_eta', '_uber_direct_status', '_uber_selected_store_id', '_uber_selected_org_id', '_uber_direct_workflow_uuid', 'pickup_date', 'pickup_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_uber_direct_delivery_type', '_uber_scheduled_date', '_uber_scheduled_time', '_uber_direct_tracking_url', '_uber_direct_eta', '_uber_direct_status', '_uber_selected_store_id', '_uber_selected_org_id', '_uber_direct_workflow_uuid', 'pickup_date', 'pickup_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_uber_direct_delivery_type', '_uber_scheduled_date', '_uber_scheduled_time', '_uber_direct_tracking_url', '_uber_direct_eta', '_uber_direct_status', '_uber_selected_store_id', '_uber_selected_org_id', '_uber_direct_workflow_uuid', 'pickup_date', 'pickup_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_uber_direct_delivery_type', '_uber_scheduled_date', '_uber_scheduled_time', '_uber_direct_tracking_url', '_uber_direct_eta', '_uber_direct_status', '_uber_selected_store_id', '_uber_selected_org_id', '_uber_direct_workflow_uuid', 'pickup_date', 'pickup_time');

