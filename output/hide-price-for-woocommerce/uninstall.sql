-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide-price-by-role', 'replace_price_by_text', 'status-hpfwc', 'status-hide-price-by-role', 'hpfwc-display-type', 'hpfwc-form-type', 'custom-redirect-url', 'hpfwc-custom-text');

