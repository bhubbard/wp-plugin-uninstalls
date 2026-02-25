-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'automizely_feed_plugin_redirection', 'feed_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_customer_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_customer_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_customer_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_customer_note');

