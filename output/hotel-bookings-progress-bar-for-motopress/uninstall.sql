-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mphbpb_step_1', 'mphbpb_step_2', 'mphbpb_step_3', 'mphbpb_greyed_out', 'mphbpb_active', 'mphbpb_show_submitted', 'mphb_search_results_page', 'mphb_checkout_page', 'mphb_booking_confirmation_page');

