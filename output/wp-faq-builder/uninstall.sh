#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wp_faq_builder_html_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wp_faq_builder_html_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wp_faq_builder_html_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wp_faq_builder_html_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_faq_builder_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_faq_builder_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_faq_builder_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_faq_builder_config'"
