-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('witalk_shipping_cost', 'witalk_shipping_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('italkereso_hide', 'shipping_cost', 'shipping_time', 'italk_prod_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('italkereso_hide', 'shipping_cost', 'shipping_time', 'italk_prod_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('italkereso_hide', 'shipping_cost', 'shipping_time', 'italk_prod_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('italkereso_hide', 'shipping_cost', 'shipping_time', 'italk_prod_name');

