-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('external_redirect_path', 'external_redirect_url', 'external_redirect_method', 'external_redirect');

