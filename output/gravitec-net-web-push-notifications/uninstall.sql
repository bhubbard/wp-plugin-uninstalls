-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'gravitecnet_db_version', 'gravitecnet_transient_error', 'gravitecnet_transient_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('recipients', 'status', 'response_body', 'send_gravitec_push', 'gravitec_meta_box_implemented');
DELETE FROM wp_usermeta WHERE meta_key IN ('recipients', 'status', 'response_body', 'send_gravitec_push', 'gravitec_meta_box_implemented');
DELETE FROM wp_termmeta WHERE meta_key IN ('recipients', 'status', 'response_body', 'send_gravitec_push', 'gravitec_meta_box_implemented');
DELETE FROM wp_commentmeta WHERE meta_key IN ('recipients', 'status', 'response_body', 'send_gravitec_push', 'gravitec_meta_box_implemented');

