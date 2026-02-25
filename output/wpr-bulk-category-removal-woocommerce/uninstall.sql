-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpr_bulk_category_removal_last_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpr_bulk_category_removal_columns', 'wpr_bulk_category_removal_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpr_bulk_category_removal_columns', 'wpr_bulk_category_removal_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpr_bulk_category_removal_columns', 'wpr_bulk_category_removal_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpr_bulk_category_removal_columns', 'wpr_bulk_category_removal_per_page');

