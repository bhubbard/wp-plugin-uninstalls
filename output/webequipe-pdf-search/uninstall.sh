#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webequipe_pdf_search_settings'
wp option delete 'webequipe_pdf_search_version'
wp option delete 'webequipe_pdf_search_error_count'
wp option delete 'webequipe_pdf_search_logs'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_webequipe_pdf_bulk_action_message_%' OR option_name LIKE '_site_transient_webequipe_pdf_bulk_action_message_%'"

# Clear Cron Jobs
wp cron event delete 'webequipe_pdf_search_background_index'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webequipe_pdf_search_excluded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webequipe_pdf_search_excluded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webequipe_pdf_search_excluded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webequipe_pdf_search_excluded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webequipe_pdf_index_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webequipe_pdf_index_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webequipe_pdf_index_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webequipe_pdf_index_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webequipe_pdf_indexing_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webequipe_pdf_indexing_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webequipe_pdf_indexing_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webequipe_pdf_indexing_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webequipe_pdf_extracted_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webequipe_pdf_extracted_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webequipe_pdf_extracted_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webequipe_pdf_extracted_text'"
