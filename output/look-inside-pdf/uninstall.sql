-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_lipdf_type_of_data_show_on_product_thumb', '_lipdf_read_more_image_link', '_lipdf_read_more_button_text', '_lipdf_show_read_more_button_after_product_thumb', '_lipdf_show_read_more_button_after_add_to_cart_button', 'look_inside_pdf_installed', 'look_inside_pdf_version');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_li_pdf_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('_li_pdf_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('_li_pdf_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_li_pdf_images');

