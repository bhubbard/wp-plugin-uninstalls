-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brr_default_slug', 'brr_default_category', 'brr_default_posttype', 'brr_default_timeout', 'brr_transient_id', 'brr_query_posttype_pattern', 'brr_query_posttype_category_pattern', 'brr_query_qtranslate_pattern');
DELETE FROM wp_options WHERE option_name LIKE '%_max';

