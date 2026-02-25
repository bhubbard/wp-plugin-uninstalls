-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatabird_app_id', 'chatabird_identity_key', 'chatabird_enable_logging');

