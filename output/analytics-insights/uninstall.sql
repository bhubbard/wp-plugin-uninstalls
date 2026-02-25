-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiwp_network_options', 'aiwp_options', 'aiwp_version', 'gadash_network_options', 'gadash_options');
DELETE FROM wp_options WHERE option_name LIKE '_aiwp_cache_%';
DELETE FROM wp_options WHERE option_name LIKE '_aiwp_cache_timeout_%';

