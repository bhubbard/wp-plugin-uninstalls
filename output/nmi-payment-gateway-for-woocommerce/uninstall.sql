-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_force_ssl_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('NMI Subscriber ID', 'billing_email', 'nmi_cc_token_id', 'NMI Transaction ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('NMI Subscriber ID', 'billing_email', 'nmi_cc_token_id', 'NMI Transaction ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('NMI Subscriber ID', 'billing_email', 'nmi_cc_token_id', 'NMI Transaction ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('NMI Subscriber ID', 'billing_email', 'nmi_cc_token_id', 'NMI Transaction ID');

