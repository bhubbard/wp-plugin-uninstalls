-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crpi_username', 'crpi_api_key', 'crpi_password', 'crpi_email', 'crpi_token', 'crpi_valid_auth');

