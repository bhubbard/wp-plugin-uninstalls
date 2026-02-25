#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_metis_api_key'
wp option delete 'wp_metis_pixel_auto_add_pages'
wp option delete 'wp_metis_pixel_auto_add_posts'
wp option delete 'classic-editor-replace'
wp option delete 'metis_db_version'

# Clear Cron Jobs
wp cron event delete 'do_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metis_text_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metis_text_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metis_text_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metis_text_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metis_text_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metis_text_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metis_text_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metis_text_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managevg-wort-metis_page_metis-messagescolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managevg-wort-metis_page_metis-messagescolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managevg-wort-metis_page_metis-messagescolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managevg-wort-metis_page_metis-messagescolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managevg-wort-metis_page_metis-pixelcolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managevg-wort-metis_page_metis-pixelcolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managevg-wort-metis_page_metis-pixelcolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managevg-wort-metis_page_metis-pixelcolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
