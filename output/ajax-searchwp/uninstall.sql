-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajax_searchwp_post_types', 'ajax_searchwp_search_placeholder', 'ajax_searchwp_limit', 'ajax_searchwp_no_results_text');

