-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whl_page', 'whl_redirect_admin', 'whl_redirect');

