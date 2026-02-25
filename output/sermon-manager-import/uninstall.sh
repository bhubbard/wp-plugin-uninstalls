#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smi_options'
wp option delete 'wpfc_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sermon_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sermon_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sermon_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sermon_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bible_passage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bible_passage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bible_passage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bible_passage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sermon_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sermon_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sermon_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sermon_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfc_sermon_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfc_sermon_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfc_sermon_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfc_sermon_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfc_sermon_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfc_sermon_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfc_sermon_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfc_sermon_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sermon_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sermon_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sermon_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sermon_description'"
