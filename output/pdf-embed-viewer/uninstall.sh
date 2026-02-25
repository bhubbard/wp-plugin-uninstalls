#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdfev_archive_slug'
wp option delete 'pdfev_css_colors'
wp option delete 'pdfev_flipbook_status'
wp option delete 'pdfev_archive_title'
wp option delete 'pdfev_reading_counter'
wp option delete 'pdfev_archive_read'
wp option delete 'pdfev_download_counter'
wp option delete 'pdfev_archive_download'
wp option delete 'pdfev_shortcode_page_url'
wp option delete 'pdfev_dummy_import_notice'
wp option delete 'pdfev_dummy_import_done'
wp option delete 'pdfev_archive_template'
wp option delete 'pdfev_archive_template_lists'
wp option delete 'rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfev_meta_pdf_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfev_meta_pdf_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfev_meta_pdf_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfev_meta_pdf_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfev_meta_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfev_meta_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfev_meta_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfev_meta_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfev_meta_downloads_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfev_meta_downloads_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfev_meta_downloads_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfev_meta_downloads_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfev_meta_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfev_meta_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfev_meta_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfev_meta_views_count'"
