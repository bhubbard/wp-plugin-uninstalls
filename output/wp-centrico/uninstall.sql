-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('centrico_woocommerce_checkbox', 'centrico_woocommerce_checkboxautocheck', 'centrico_woocommerce_checkboxlabel', 'centrico_woocommerce_fields', 'centrico_woocommerce_list_id', 'centrico_woocommerce_groups_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('centrico_centrico_woocommerce');
DELETE FROM wp_usermeta WHERE meta_key IN ('centrico_centrico_woocommerce');
DELETE FROM wp_termmeta WHERE meta_key IN ('centrico_centrico_woocommerce');
DELETE FROM wp_commentmeta WHERE meta_key IN ('centrico_centrico_woocommerce');

