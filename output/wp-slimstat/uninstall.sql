-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slimstat_tracker_error', 'slimstat_geoip_error', 'slimstat_permalink_structure_updated', 'active_sitewide_plugins', 'slimstat_filters', 'slimstat_last_geoip_dl', 'slimstat_options', 'slimstat_visit_id', 'wp_slimstat_addon_list', 'slimstat_your_content', 'slimstat_resource_titles', 'slimstat_ranking_values', 'slimstat_dynamic_strings', 'slimstat_visit_id');
DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide';
DELETE FROM wp_options WHERE option_name LIKE 'wp-slimstat-download-link-%';
DELETE FROM wp_options WHERE option_name LIKE 'slimstat_%';

