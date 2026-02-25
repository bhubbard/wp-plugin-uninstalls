-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tokenlink_zendesk_subdomain', 'tokenlink_zendesk_shared_key', 'tokenlink_zendesk_login_redirect');

