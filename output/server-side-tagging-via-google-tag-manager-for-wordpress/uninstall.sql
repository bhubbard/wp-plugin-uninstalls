-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ee_options', 'ee_remarketing_snippets', 'ee_api_data', 'ee_additional_data', 'conv_selected_events', 'woocommerce_currency', 'woocommerce_default_country', 'convsst_msg_nofifications', 'convsst_sst_pcount', 'ee_conversio_send_to', 'ga_EC', 'google_ads_conversion_tracking', 'ee_ads_tracking_id', 'ads_ert', 'ads_edrt', 'ee_customer_gmail', 'convsst_ut', 'ee_customer_gtm_gmail', 'conv_sst_server_hits_db', 'convsst_prod_mapped_attrs', 'convsst_prod_mapped_cats', 'convsst_ads_tracking_id', 'conv_gads_currency', 'conv_sst_server_hits', '_conversios_activation_redirect_sst');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tvc_tracked_refund', '_yoast_wpseo_primary_product_cat', 'billing_phone', '_tracked');
DELETE FROM wp_usermeta WHERE meta_key IN ('tvc_tracked_refund', '_yoast_wpseo_primary_product_cat', 'billing_phone', '_tracked');
DELETE FROM wp_termmeta WHERE meta_key IN ('tvc_tracked_refund', '_yoast_wpseo_primary_product_cat', 'billing_phone', '_tracked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tvc_tracked_refund', '_yoast_wpseo_primary_product_cat', 'billing_phone', '_tracked');

