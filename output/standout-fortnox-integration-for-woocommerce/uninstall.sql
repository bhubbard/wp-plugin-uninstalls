-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_key_id', 'fortnox_authorization_key', 'fortnox_id_key');

