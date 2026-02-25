-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_page_id', 'betanet_epost_hfd_track_shipment_url', 'betanet_epost_hfd_cancel_shipment_url', 'betanet_epost_hfd_print_label_url', 'hfd_order_auto_sync', 'hfd_sync_order_items', 'betanet_epost_service_url', 'betanet_epost_hfd_service_url', 'hfd_auto_sync_time', 'hfd_auto_sync_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hfd_ship_cancel_response', 'hfd_sync_flag', 'hfd_rand_number', 'betanet_pmethod');
DELETE FROM wp_usermeta WHERE meta_key IN ('hfd_ship_cancel_response', 'hfd_sync_flag', 'hfd_rand_number', 'betanet_pmethod');
DELETE FROM wp_termmeta WHERE meta_key IN ('hfd_ship_cancel_response', 'hfd_sync_flag', 'hfd_rand_number', 'betanet_pmethod');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hfd_ship_cancel_response', 'hfd_sync_flag', 'hfd_rand_number', 'betanet_pmethod');

