-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dplr_version', 'dplr_settings', 'dplrwoo_api_connected', 'dplrwoo_last_synch', 'dplr_subscribers_list', 'dplrwoo_mapping', 'dplrwoo_version', 'dplr_wc_consent_text', 'dplr_wc_consent_location', 'dplr_wc_open_graph_meta', 'dplr_wc_consent');

