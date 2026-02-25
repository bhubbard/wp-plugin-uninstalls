-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sc_sortable_columns_posts', 'sc_sortable_columns_pages', 'sortcols_sortable_columns_posts', 'sortcols_sortable_columns_pages');

