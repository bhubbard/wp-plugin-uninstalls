-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carbon_breadcrumbs_glue', 'carbon_breadcrumbs_min_items', 'carbon_breadcrumbs_last_item_link');
DELETE FROM wp_options WHERE option_name LIKE 'carbon_breadcrumbs_%';

