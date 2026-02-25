-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('biblio_dispatch_license_key_email', 'biblio_dispatch_license_key', 'biblio_dispatch_license_status');

