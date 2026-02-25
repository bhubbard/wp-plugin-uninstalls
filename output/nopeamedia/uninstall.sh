#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'primary_color_cmyk'
wp option delete 'secondry_color_cmyk'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'with_pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'with_pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'with_pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'with_pdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_subarticle_in_new_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_subarticle_in_new_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_subarticle_in_new_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_subarticle_in_new_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdf_quality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdf_quality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdf_quality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdf_quality'"
