-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gsbooks_dummy_book_data_created', 'gsbooks_dummy_shortcode_data_created', 'gs_book_autoimport_done', 'gsbooks_dismiss_demo_data_notice', 'GS_book_permalinks_flushed', 'gs_bookshowcase_settings', 'gs_bookshowcase_level_settings', 'gs_books_slider_shortcode_prefs', 'gs_books_plugin_version', 'gstickr_active_time', 'gsadmin_active_time', 'gsadmin_maybe_later', 'gs_book_fields_visibility_order', 'GS_Books_plugin_permalinks_flushed', 'gs_book_filters_order', 'gsbooks_dummy_book_data_creating', 'gsbooks_dummy_shortcode_data_creating', 'gsbooks_dummy_terms', 'gsbooks_dummy_attachments', 'gsbooks_dummy_books', 'gsbooks_dummy_data', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gsbooks-demo_data', '_thumbnail_id', '_gs_book_import_id', 'gsb_gallery', '_wp_attachment_image_alt', '_gsbks_publish', '_gsbks_isbn_ten', '_gsbks_isbn_thirteen', '_gsbks_pages', '_gsbks_dimension', '_gsbks_fsize', '_gsbks_url', 'gstickr_nag_ignore', 'author-taxonomy-image-id', 'author-taxonomy-repeat');
DELETE FROM wp_usermeta WHERE meta_key IN ('gsbooks-demo_data', '_thumbnail_id', '_gs_book_import_id', 'gsb_gallery', '_wp_attachment_image_alt', '_gsbks_publish', '_gsbks_isbn_ten', '_gsbks_isbn_thirteen', '_gsbks_pages', '_gsbks_dimension', '_gsbks_fsize', '_gsbks_url', 'gstickr_nag_ignore', 'author-taxonomy-image-id', 'author-taxonomy-repeat');
DELETE FROM wp_termmeta WHERE meta_key IN ('gsbooks-demo_data', '_thumbnail_id', '_gs_book_import_id', 'gsb_gallery', '_wp_attachment_image_alt', '_gsbks_publish', '_gsbks_isbn_ten', '_gsbks_isbn_thirteen', '_gsbks_pages', '_gsbks_dimension', '_gsbks_fsize', '_gsbks_url', 'gstickr_nag_ignore', 'author-taxonomy-image-id', 'author-taxonomy-repeat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gsbooks-demo_data', '_thumbnail_id', '_gs_book_import_id', 'gsb_gallery', '_wp_attachment_image_alt', '_gsbks_publish', '_gsbks_isbn_ten', '_gsbks_isbn_thirteen', '_gsbks_pages', '_gsbks_dimension', '_gsbks_fsize', '_gsbks_url', 'gstickr_nag_ignore', 'author-taxonomy-image-id', 'author-taxonomy-repeat');

