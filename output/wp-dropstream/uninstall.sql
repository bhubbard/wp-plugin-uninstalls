-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsc_trackingid_message', 'wpsc_trackingid_subject');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tracking_provider', '_tracking_number', '_date_shipped', '_tracking_provider_service_level');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tracking_provider', '_tracking_number', '_date_shipped', '_tracking_provider_service_level');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tracking_provider', '_tracking_number', '_date_shipped', '_tracking_provider_service_level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tracking_provider', '_tracking_number', '_date_shipped', '_tracking_provider_service_level');

