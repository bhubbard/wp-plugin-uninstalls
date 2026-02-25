-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_targetbay_review_settings', 'wc_targetbay_just_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'billing_city', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'billing_city', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'billing_city', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'billing_city', 'billing_country');

