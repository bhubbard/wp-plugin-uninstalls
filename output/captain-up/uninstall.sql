-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('captain-api-key', 'captain-first-install', 'captain-locale', 'captain-disabled-paths', 'captain-enabled-paths', 'captain-show-paths-type', 'captain-hide-on-homepage-checkbox', 'captain-api-secret', 'captain-client-token', 'captain-user-integration-checkbox');

