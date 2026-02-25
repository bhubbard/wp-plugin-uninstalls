-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foxdeli_delivery_agent_extra_services', 'foxdeli_delivery_customer_agents', 'foxdeli_delivery_extra_services', 'foxdeli_delivery_collection_places', 'foxdeli_admin_api_token', 'foxdeli_admin_api_token_check', 'foxdeli_admin_default_weight', 'foxdeli_admin_default_length', 'foxdeli_admin_default_width', 'foxdeli_admin_default_height', 'foxdeli_delivery_data_last_load', 'foxdeli_admin_webhook_activated', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'foxdeli_admin_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('foxdeli_delivery_ticket_note', 'zasilkovna_id_dopravy', 'foxdeli_monitored_package_integration', 'foxdeli_delivery_external_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('foxdeli_delivery_ticket_note', 'zasilkovna_id_dopravy', 'foxdeli_monitored_package_integration', 'foxdeli_delivery_external_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('foxdeli_delivery_ticket_note', 'zasilkovna_id_dopravy', 'foxdeli_monitored_package_integration', 'foxdeli_delivery_external_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('foxdeli_delivery_ticket_note', 'zasilkovna_id_dopravy', 'foxdeli_monitored_package_integration', 'foxdeli_delivery_external_id');

