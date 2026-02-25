#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aeo_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aeo_target_question'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aeo_target_question'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aeo_target_question'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aeo_target_question'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aeo_direct_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aeo_direct_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aeo_direct_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aeo_direct_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aeo_faq_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aeo_faq_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aeo_faq_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aeo_faq_items'"
