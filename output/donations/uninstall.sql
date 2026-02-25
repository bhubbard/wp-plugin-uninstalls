-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('donations_version', 'donations_widget_options', 'donations_alertpay_email', 'donations_moneybookers_email', 'donations_paypal_email', 'web_invoice_force_https', 'donations_item_name', 'donations_item_code', 'donations_currency', 'donations_amount');

