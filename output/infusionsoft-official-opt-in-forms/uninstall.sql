-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inf_infusionsoft_options', 'infusionsoft_redirect_lists', 'update_refresh', 'inf_infusionsoft_stats_cache');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

