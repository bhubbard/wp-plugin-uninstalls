-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wl_tos_tos_heading', 'wl_tos_pp_heading', 'wl_tos_name', 'wl_tos_full_name', 'wl_tos_possessive_name', 'wl_tos_domain_name', 'wl_tos_official_site', 'wl_tos_min_age', 'wl_tos_time_period_change', 'wl_tos_time_period_reply', 'wl_tos_time_period_damage', 'wl_tos_time_dcma_url', 'wl_tos_venue', 'wl_tos_court', 'wl_tos_arbit', 'widget_api_endpoint');

