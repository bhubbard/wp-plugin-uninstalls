-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwal_page', 'rwal_redirect', 'rwal_admin', 'rwal_page_input', 'rwal_redirect_field');

