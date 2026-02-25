-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('language_redirect_default_redirect_location', 'language_redirect_redirect_mapping');

