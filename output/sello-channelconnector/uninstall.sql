-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_account_id', 'cc_account_updated', 'cc_account_status', 'cc_categories_updated', 'cc_integrations_updated', 'cc_shipping_method', 'cc_default_payment_method', 'cc_payment_method', 'cc_new_order_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sello_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('sello_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('sello_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sello_order_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'channelconnector_active_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'channelconnector_active_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'channelconnector_active_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'channelconnector_active_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'channelconnector_category_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'channelconnector_category_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'channelconnector_category_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'channelconnector_category_%';

