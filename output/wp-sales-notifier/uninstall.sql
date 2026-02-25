-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsn_enable', 'wsn_display_date', 'wsn_delay_time', 'wsn_order_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_first_name', '_billing_city');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_first_name', '_billing_city');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_first_name', '_billing_city');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_first_name', '_billing_city');

