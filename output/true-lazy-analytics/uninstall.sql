-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tlap_add_analytics_option_main', 'tlap_add_analytics_option_counters', 'tlap_add_analytics_option_metrica', 'tlap_add_analytics_option_speedup');

