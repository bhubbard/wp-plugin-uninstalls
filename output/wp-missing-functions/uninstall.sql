-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmf_options', 'cop_options', 'sef_options', 'wop_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmf-text-after-price', 'wpmf-text-under-price', 'wmf_alt_paypal_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmf-text-after-price', 'wpmf-text-under-price', 'wmf_alt_paypal_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmf-text-after-price', 'wpmf-text-under-price', 'wmf_alt_paypal_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmf-text-after-price', 'wpmf-text-under-price', 'wmf_alt_paypal_email');

