-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('automizely_returnscenter_plugin_redirection', 'returnscenter_option_name', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE 'wc-automizely-returnscenter-plugin%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_customer_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_customer_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_customer_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_customer_note');

