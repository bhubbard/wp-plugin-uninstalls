-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('odflc_options', 'odflc_form_custom_css', 'odflc_products_details');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_odflc_lead_email', '_odflc_lead_phone', '_odflc_lead_sku', '_odflc_lead_product_title', '_odflc_lead_phone_code', '_odflc_classification', '_odflc_is_odf_contact_id', '_odflc_backlog', '_odflc_is_odf_deal_created');
DELETE FROM wp_usermeta WHERE meta_key IN ('_odflc_lead_email', '_odflc_lead_phone', '_odflc_lead_sku', '_odflc_lead_product_title', '_odflc_lead_phone_code', '_odflc_classification', '_odflc_is_odf_contact_id', '_odflc_backlog', '_odflc_is_odf_deal_created');
DELETE FROM wp_termmeta WHERE meta_key IN ('_odflc_lead_email', '_odflc_lead_phone', '_odflc_lead_sku', '_odflc_lead_product_title', '_odflc_lead_phone_code', '_odflc_classification', '_odflc_is_odf_contact_id', '_odflc_backlog', '_odflc_is_odf_deal_created');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_odflc_lead_email', '_odflc_lead_phone', '_odflc_lead_sku', '_odflc_lead_product_title', '_odflc_lead_phone_code', '_odflc_classification', '_odflc_is_odf_contact_id', '_odflc_backlog', '_odflc_is_odf_deal_created');

