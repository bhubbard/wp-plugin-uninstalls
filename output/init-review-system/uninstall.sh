#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'init_plugin_suite_rs_global_avg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_init_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_init_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_init_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_init_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_init_review_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_init_review_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_init_review_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_init_review_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_init_review_avg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_init_review_avg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_init_review_avg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_init_review_avg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_init_review_weighted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_init_review_weighted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_init_review_weighted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_init_review_weighted'"
