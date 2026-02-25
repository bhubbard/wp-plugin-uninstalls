-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eap-amazon-country', 'eap-amazon-tag', 'eap-amazon-api-access-key', 'eap-amazon-api-secret', 'eap-buy-now-button', 'eap-amazon-link-type', 'eap-amazon-show-price');

