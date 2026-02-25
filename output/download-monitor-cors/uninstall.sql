-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dlm_download_endpoint', 'dlm_download_endpoint_value', 'dlm_cors_requester_url');

