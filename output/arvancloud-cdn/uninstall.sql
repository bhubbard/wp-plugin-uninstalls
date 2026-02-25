-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arvan-cloud-cdn-status', 'arvan-cloud-cdn-api_key', 'arvan-cloud-cdn-automatic-cleaning', 'currently_requested_for_automatic_add_domain');

