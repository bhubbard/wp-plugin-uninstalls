-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edc_category_id', 'edc_view_js', 'edc_categoty_title');

