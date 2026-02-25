-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cyke_url', 'cyke_user_email', 'cyke_user_token');

