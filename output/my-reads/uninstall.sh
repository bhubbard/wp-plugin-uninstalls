#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myreads_plugin_version'
wp option delete 'myreads_auto_regenerate_json'
wp option delete 'myreads_default_pattern'
wp option delete 'myreads_csv_file'

# Delete Transients
wp transient delete 'myreads_flush_rewrites'
wp transient delete 'myreads_csv_import_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myreads_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myreads_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myreads_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myreads_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myreads_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myreads_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myreads_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myreads_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myreads_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myreads_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myreads_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myreads_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myreads_ratingStyle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myreads_ratingStyle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myreads_ratingStyle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myreads_ratingStyle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myreads_isFavorite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myreads_isFavorite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myreads_isFavorite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myreads_isFavorite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myreads_currentlyReading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myreads_currentlyReading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myreads_currentlyReading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myreads_currentlyReading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myreads_amazonLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myreads_amazonLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myreads_amazonLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myreads_amazonLink'"
