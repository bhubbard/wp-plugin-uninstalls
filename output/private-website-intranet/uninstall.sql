-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('private-website-intranet-redirect-after-login', 'private-website-intranet-login-page', 'private-website-intranet-use-shortcode', 'private-website-intranet-redirect-after-login-page');

