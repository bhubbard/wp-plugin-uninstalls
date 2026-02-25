-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('main_name', 'notice_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price_dates_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price_dates_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price_dates_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price_dates_to');

