-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_filter_relate_term_product_cat');
DELETE FROM wp_options WHERE option_name LIKE 'wc_filter_relate_term_%';

