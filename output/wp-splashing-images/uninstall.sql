-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('splashing_access_token', 'splashing_featured', 'splashing_latest');

