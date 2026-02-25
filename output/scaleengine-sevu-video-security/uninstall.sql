-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sevu_show_errors', 'sevu_api_secret', 'sevu_api_public', 'sevu_api_address', 'sevu_cdn');

