-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_new_order_settings', 'woocommerce_fonepay_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Fonepay Trace Id (Trace ID) ');
DELETE FROM wp_usermeta WHERE meta_key IN ('Fonepay Trace Id (Trace ID) ');
DELETE FROM wp_termmeta WHERE meta_key IN ('Fonepay Trace Id (Trace ID) ');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Fonepay Trace Id (Trace ID) ');

