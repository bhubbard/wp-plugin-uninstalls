#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whatsapp_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whatsapp_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whatsapp_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whatsapp_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whatsapp_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whatsapp_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whatsapp_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whatsapp_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopingwebsite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopingwebsite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopingwebsite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopingwebsite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noindex_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noindex_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noindex_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noindex_value'"
