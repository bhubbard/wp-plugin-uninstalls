-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppsb_plugin_version', 'wppsb_remove_query_strings', 'wppsb_enable_gzip', 'wppsb_expire_caching', 'wppsb_instant_page_preload', 'wppsb_review_notice', 'wppsb_activation_date');

