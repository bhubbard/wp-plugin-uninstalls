-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autordr_radautordr_api_key', 'autordr_frontend_field_ids', 'autordr_backend_field_ids');

