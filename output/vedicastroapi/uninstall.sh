#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vedicastro_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_free_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_free_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_free_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_free_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_pdf_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_pdf_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_pdf_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_pdf_product'"
