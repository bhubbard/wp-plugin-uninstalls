-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bcms_insert_related', 'bcms_searchsmart', 'bcms_swhl', 'bcms_managefocus_month', 'bcms_managefocus_author', 'widget_postloop', 'widget_responseloop', 'bcms_search_options', 'bsuite_site_privacy');

