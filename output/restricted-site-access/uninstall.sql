-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsa_hide_page_cache_notice', 'rsa_options', 'rsa_mode', 'rsa_activation_version', 'active_sitewide_plugins');

