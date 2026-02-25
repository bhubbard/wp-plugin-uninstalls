-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_clickandpledge_paymentsettings', 'woocommerce_clickandpledge_recurring', 'woocommerce_clickandpledge_additionalfee', 'woocommerce_tax_display_cart', 'woocommerce_clickandpledge_zeropaymentsettings', 'woocommerce_clickandpledge_acceptedcreditcards', 'woocommerce_force_ssl_checkout', 'woocommerce_currency');

