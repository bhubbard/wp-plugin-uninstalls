-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ubigeo_checkout_checkbox', 'ubigeo_emails_checkbox', 'ubigeo_thanks_checkbox', 'ubigeo_title_checkbox', 'ubigeo_format_checkbox', 'ubigeo_priority_method_free_checkbox', 'rt_ubigeo_peru_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_departamento', '_billing_provincia', '_billing_distrito', '_shipping_departamento', '_shipping_provincia', '_shipping_distrito');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_departamento', '_billing_provincia', '_billing_distrito', '_shipping_departamento', '_shipping_provincia', '_shipping_distrito');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_departamento', '_billing_provincia', '_billing_distrito', '_shipping_departamento', '_shipping_provincia', '_shipping_distrito');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_departamento', '_billing_provincia', '_billing_distrito', '_shipping_departamento', '_shipping_provincia', '_shipping_distrito');

