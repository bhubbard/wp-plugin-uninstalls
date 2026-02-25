-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enlighter-customizer', 'enlighter-cache-hash', 'enlighter-activation-redirect', 'enlighter-upgrade', 'enlighter-version', 'enlighter-options', 'enlighter_userthemes');
DELETE FROM wp_options WHERE option_name LIKE 'enlighter-%';

