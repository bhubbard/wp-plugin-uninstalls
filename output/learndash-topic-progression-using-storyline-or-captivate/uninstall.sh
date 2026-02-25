#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%hide_mark_complete_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%hide_mark_complete_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%hide_mark_complete_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hide_mark_complete_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'example_ignore_notice3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'example_ignore_notice3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'example_ignore_notice3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'example_ignore_notice3'"
