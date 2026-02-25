-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_eurd_settings', 'woocommerce_coming_soon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eurd_pr_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('eurd_pr_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('eurd_pr_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eurd_pr_code');

