-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_setup_complete', 'woocommerce_onboarding_completed', 'woocommerce_currency', 'woocommerce_default_country', 'swrfw7sk_review_dismissed_permanently', 'swrfw7sk_install_date', 'swrfw7sk_review_dismissed_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('metaboxhidden_dashboard');
DELETE FROM wp_usermeta WHERE meta_key IN ('metaboxhidden_dashboard');
DELETE FROM wp_termmeta WHERE meta_key IN ('metaboxhidden_dashboard');
DELETE FROM wp_commentmeta WHERE meta_key IN ('metaboxhidden_dashboard');

