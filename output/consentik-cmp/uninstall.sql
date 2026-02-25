-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('consentik_site_id', 'consentik_instance_id', 'consentik_enable_gcm');

