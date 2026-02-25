-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_pdc_columns', 'wc_pdc_product_images', 'wc_pdc_upsells', 'wc_pdc_related', 'wc_pdc_tabs');

