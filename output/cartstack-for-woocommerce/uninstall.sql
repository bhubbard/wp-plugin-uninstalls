-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cartstack_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_total', '_order_tax', '_order_shipping', '_billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_total', '_order_tax', '_order_shipping', '_billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_total', '_order_tax', '_order_shipping', '_billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_total', '_order_tax', '_order_shipping', '_billing_email');

