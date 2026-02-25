-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpnfwc_webform_settings', 'cpnfwc_cart_abandone_settings', 'plugin_status_campaign_plus', 'compaign_syn_prodcuts_list', 'compaign_syn_customers_list', 'compaign_syn_orders_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('campaignplus_newsletter_status', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('campaignplus_newsletter_status', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('campaignplus_newsletter_status', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('campaignplus_newsletter_status', '_regular_price', '_sale_price');

