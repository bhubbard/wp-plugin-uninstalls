-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpaefw_ops_index', 'woocommerce_store_postcode', 'rpaefw_dogovor', 'woocommerce_currency', 'woocs', 'rpaefw_hide_info_log', 'woocommerce_email_footer_text', 'rpaefw_use_auto_email_tracking_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_post_tracking_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_post_tracking_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_post_tracking_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_post_tracking_number');

