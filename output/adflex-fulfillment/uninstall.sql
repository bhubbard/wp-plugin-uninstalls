-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pod_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tracking_code', '_fulfillment_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tracking_code', '_fulfillment_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tracking_code', '_fulfillment_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tracking_code', '_fulfillment_status');

