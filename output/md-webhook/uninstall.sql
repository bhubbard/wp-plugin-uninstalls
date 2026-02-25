-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdwh_active', 'mdwh_autokeyword', 'mdwh_token', 'mdwh_zip_url', 'mdwh_username', 'mdwh_password', 'mdwh_tags', 'mdwh_autocat');

