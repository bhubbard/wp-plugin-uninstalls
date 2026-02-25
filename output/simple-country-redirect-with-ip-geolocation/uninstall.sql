-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redirect_by_country_redirect_enabled', 'redirect_by_country_redirect_rules', 'redirect_by_country_cookie_days');

