-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SitzzForceHttps_redirect_to_secure_site-id', 'SitzzForceHttps_replace_insecure_elements-id');

