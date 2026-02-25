-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bop_nav_search_box_item_recd_vers_warn', 'bop_nav_search_box_item_version', 'bop_nav_search_box_item_recommended_versions_warn');

