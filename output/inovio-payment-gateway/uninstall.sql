-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_plugin_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_achtransaction_id', '_payment_method', '_inovio_gateway_scheduled_subscription_custid', 'CUST_ID', 'PMT_L4', '_customer_ip_address', '_inovio_gateway_scheduled_request', '_inovio_gateway_scheduled_response', '_inoviotransaction_id', '_inovio_gateway_scheduled_first_request', 'uniqid', 'REQ_ID', 'TRANS_STATUS_NAME', 'TRANS_ID', '_inovio_gateway_scheduled_first_response', 'my_field_name', 'my_field_term');
DELETE FROM wp_usermeta WHERE meta_key IN ('_achtransaction_id', '_payment_method', '_inovio_gateway_scheduled_subscription_custid', 'CUST_ID', 'PMT_L4', '_customer_ip_address', '_inovio_gateway_scheduled_request', '_inovio_gateway_scheduled_response', '_inoviotransaction_id', '_inovio_gateway_scheduled_first_request', 'uniqid', 'REQ_ID', 'TRANS_STATUS_NAME', 'TRANS_ID', '_inovio_gateway_scheduled_first_response', 'my_field_name', 'my_field_term');
DELETE FROM wp_termmeta WHERE meta_key IN ('_achtransaction_id', '_payment_method', '_inovio_gateway_scheduled_subscription_custid', 'CUST_ID', 'PMT_L4', '_customer_ip_address', '_inovio_gateway_scheduled_request', '_inovio_gateway_scheduled_response', '_inoviotransaction_id', '_inovio_gateway_scheduled_first_request', 'uniqid', 'REQ_ID', 'TRANS_STATUS_NAME', 'TRANS_ID', '_inovio_gateway_scheduled_first_response', 'my_field_name', 'my_field_term');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_achtransaction_id', '_payment_method', '_inovio_gateway_scheduled_subscription_custid', 'CUST_ID', 'PMT_L4', '_customer_ip_address', '_inovio_gateway_scheduled_request', '_inovio_gateway_scheduled_response', '_inoviotransaction_id', '_inovio_gateway_scheduled_first_request', 'uniqid', 'REQ_ID', 'TRANS_STATUS_NAME', 'TRANS_ID', '_inovio_gateway_scheduled_first_response', 'my_field_name', 'my_field_term');

