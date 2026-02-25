-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grabwp_tenancy_token_error', 'grabwp_tenancy_error');

