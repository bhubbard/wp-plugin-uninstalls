-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdfev_archive_slug', 'pdfev_css_colors', 'pdfev_flipbook_status', 'pdfev_archive_title', 'pdfev_reading_counter', 'pdfev_archive_read', 'pdfev_download_counter', 'pdfev_archive_download', 'pdfev_shortcode_page_url', 'pdfev_dummy_import_notice', 'pdfev_dummy_import_done', 'pdfev_archive_template', 'pdfev_archive_template_lists', 'rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pdfev_meta_pdf_url', 'pdfev_meta_download', 'pdfev_meta_downloads_count', 'pdfev_meta_views_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('pdfev_meta_pdf_url', 'pdfev_meta_download', 'pdfev_meta_downloads_count', 'pdfev_meta_views_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('pdfev_meta_pdf_url', 'pdfev_meta_download', 'pdfev_meta_downloads_count', 'pdfev_meta_views_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pdfev_meta_pdf_url', 'pdfev_meta_download', 'pdfev_meta_downloads_count', 'pdfev_meta_views_count');

