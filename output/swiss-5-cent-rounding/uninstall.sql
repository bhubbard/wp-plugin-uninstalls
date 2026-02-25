-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sr_vat_price_rounding', 'sr_discount_price_rounding');

