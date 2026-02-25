-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affiliatly_admin_code', 'affiliatly_security_hash', 'alg_currency_switcher_currency_shop_default', 'affiliatly_discount_link_status', 'affiliatly_discount_url_parameter');

