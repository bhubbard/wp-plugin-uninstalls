-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_chameleon', 'ap_case', 'ap_layout', 'ap_dom', 'ap_debug_logger', 'alphabetic_pagination_options', 'ap_taxes_types_query_cache');

