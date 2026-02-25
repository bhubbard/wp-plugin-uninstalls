-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orpl_version', 'orpl_currency', 'orpl_tax_rate', 'orpl_vat_rate', 'orpl_currency_position', 'orpl_date_format', 'orpl_shop_name', 'orpl_shop_address', 'orpl_shop_phone', 'orpl_settings');

