-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carbonbalance_button_template', 'carbonbalance_statistics', 'carbonbalance_optout', 'carbonbalance_cfp', 'carbonbalance_gif_feature', 'carbonbalance_ab_research', 'carbonbalance_widgetmark_footer', 'carbonbalance_checkout_placement', 'carbonbalance_disable_button_on_cart', 'carbonbalance_site_key', 'carbonbalance_site_skey', 'carbonbalance_id', 'carbonbalance_bbApi_token', 'carbonbalance_bbApi_token_refresh', 'carbonbalance_bbApi_token_expire', 'carbonbalance_compensation_count', 'carbonbalance_impact', 'carbonbalance_code', 'woocommerce_currency', 'carbonbalance_bbApi_id', 'carbonbalance_bbApi_pass');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_email');

