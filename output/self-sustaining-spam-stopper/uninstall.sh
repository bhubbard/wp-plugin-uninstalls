#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssss_missing_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssss_missing_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssss_missing_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssss_missing_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssss_extremely_important_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssss_extremely_important_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssss_extremely_important_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssss_extremely_important_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssss_extremely_empty_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssss_extremely_empty_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssss_extremely_empty_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssss_extremely_empty_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssss_form_loaded_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssss_form_loaded_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssss_form_loaded_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssss_form_loaded_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssss_form_time_elapsed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssss_form_time_elapsed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssss_form_time_elapsed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssss_form_time_elapsed'"
