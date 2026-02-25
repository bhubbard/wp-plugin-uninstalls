-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('huxloe_shipping_enable_log', 'huxloe_shipping_tenant_id', 'huxloe_shipping_api_key', 'huxloe_shipping_user_id', 'huxloe_shipping_ioss_number', 'huxloe_shipping_eori_number', 'huxloe_shipping_vat_number');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('huxloe_consigmentNumber', '_hs_code', '_huxloe_country_manufacturer');
DELETE FROM wp_usermeta WHERE meta_key IN ('huxloe_consigmentNumber', '_hs_code', '_huxloe_country_manufacturer');
DELETE FROM wp_termmeta WHERE meta_key IN ('huxloe_consigmentNumber', '_hs_code', '_huxloe_country_manufacturer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('huxloe_consigmentNumber', '_hs_code', '_huxloe_country_manufacturer');

