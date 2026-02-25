#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gsbooks_dummy_book_data_created'
wp option delete 'gsbooks_dummy_shortcode_data_created'
wp option delete 'gs_book_autoimport_done'
wp option delete 'gsbooks_dismiss_demo_data_notice'
wp option delete 'GS_book_permalinks_flushed'
wp option delete 'gs_bookshowcase_settings'
wp option delete 'gs_bookshowcase_level_settings'
wp option delete 'gs_books_slider_shortcode_prefs'
wp option delete 'gs_books_plugin_version'
wp option delete 'gstickr_active_time'
wp option delete 'gsadmin_active_time'
wp option delete 'gsadmin_maybe_later'
wp option delete 'gs_book_fields_visibility_order'
wp option delete 'GS_Books_plugin_permalinks_flushed'
wp option delete 'gs_book_filters_order'

# Delete Transients
wp transient delete 'gsbooks_dummy_book_data_creating'
wp transient delete 'gsbooks_dummy_shortcode_data_creating'
wp transient delete 'gsbooks_dummy_terms'
wp transient delete 'gsbooks_dummy_attachments'
wp transient delete 'gsbooks_dummy_books'
wp transient delete 'gsbooks_dummy_data'
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsbooks-demo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsbooks-demo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsbooks-demo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsbooks-demo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_book_import_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_book_import_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_book_import_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_book_import_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsb_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsb_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsb_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsb_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsbks_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsbks_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsbks_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsbks_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsbks_isbn_ten'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsbks_isbn_ten'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsbks_isbn_ten'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsbks_isbn_ten'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsbks_isbn_thirteen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsbks_isbn_thirteen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsbks_isbn_thirteen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsbks_isbn_thirteen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsbks_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsbks_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsbks_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsbks_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsbks_dimension'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsbks_dimension'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsbks_dimension'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsbks_dimension'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsbks_fsize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsbks_fsize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsbks_fsize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsbks_fsize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsbks_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsbks_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsbks_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsbks_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gstickr_nag_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gstickr_nag_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gstickr_nag_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gstickr_nag_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author-taxonomy-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author-taxonomy-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author-taxonomy-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author-taxonomy-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author-taxonomy-repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author-taxonomy-repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author-taxonomy-repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author-taxonomy-repeat'"
