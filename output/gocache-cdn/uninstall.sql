-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gocache_option-auto_clear_sitemap_url', 'gocache_option-auto_clear_amp_url', 'gocache_option-amp', 'gocache_option-external_configs', 'gocache_option-status');
DELETE FROM wp_options WHERE option_name LIKE 'gocache_option-%';

