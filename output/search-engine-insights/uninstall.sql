-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seiwp_got_updated', 'seiwp_redeemed_code', 'seiwp_network_options', 'seiwp_options', 'seiwp_version');
DELETE FROM wp_options WHERE option_name LIKE '_seiwp_cache_%';
DELETE FROM wp_options WHERE option_name LIKE '_seiwp_cache_timeout_%';

