#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mlgb_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mlgb_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mlgb_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mlgb_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mlgb_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mlgb_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mlgb_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mlgb_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mlgb_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mlgb_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mlgb_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mlgb_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mlgb_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mlgb_custom_headers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mlgb_custom_headers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mlgb_custom_headers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mlgb_custom_headers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mlgb_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mlgb_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mlgb_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mlgb_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mlgb_prevented'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mlgb_prevented'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mlgb_prevented'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mlgb_prevented'"
