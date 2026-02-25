-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplra_login_redirect_enable', 'wplra_login_redirect_filters');

