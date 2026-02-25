-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prices_bgn_eur_active', 'pbe_license_key', 'pbe_secondary_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pbe_euro_notice_dismissed', '_regular_price', '_sale_price', '_price', '_bgn_eur_converted_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('pbe_euro_notice_dismissed', '_regular_price', '_sale_price', '_price', '_bgn_eur_converted_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('pbe_euro_notice_dismissed', '_regular_price', '_sale_price', '_price', '_bgn_eur_converted_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pbe_euro_notice_dismissed', '_regular_price', '_sale_price', '_price', '_bgn_eur_converted_date');

