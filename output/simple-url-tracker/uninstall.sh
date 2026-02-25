#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campain_field_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campain_field_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campain_field_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campain_field_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medium_field_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medium_field_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medium_field_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medium_field_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campain_name_field_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campain_name_field_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campain_name_field_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campain_name_field_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campain_term_field_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campain_term_field_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campain_term_field_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campain_term_field_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campain_content_field_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campain_content_field_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campain_content_field_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campain_content_field_meta_key'"
