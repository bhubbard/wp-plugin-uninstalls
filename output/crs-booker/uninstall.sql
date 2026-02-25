-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crsbkr_hue', 'crsbkr_sat', 'crsbkr_lig', 'crsbkr_booking_endpoint', 'crsbkr_endpoint', 'crsbkr_uuid', 'crsbkr_api_key', 'crsbkr_search_results_page');

