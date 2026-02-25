-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('memberspace_extra_security', 'memberspace_rules', 'memberspace_subdomain', 'memberspace_last_updated', 'memberspace_display_banner', 'memberspace_public_key', 'memberspace_site_contact', 'memberspace_site_ID', 'memberspace_last_sync_successful');

