-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cssjsr_clear_cache_wp_rocket', 'cssjsr_clear_cache_w3tc', 'cssjsr_clear_cache_litespeed');

