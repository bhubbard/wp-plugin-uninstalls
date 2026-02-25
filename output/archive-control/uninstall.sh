#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'archive_control_tax_category_options'
wp option delete 'archive_control_tax_post_tag_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_image'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_before'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_after'"
wp option delete 'archive_control_db_current_version'
wp option delete 'archive_control_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_control_term_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_control_term_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_control_term_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_control_term_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_control_term_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_control_term_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_control_term_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_control_term_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_control_term_after'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_control_term_after'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_control_term_after'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_control_term_after'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archive_control_term_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archive_control_term_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archive_control_term_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archive_control_term_meta'"
