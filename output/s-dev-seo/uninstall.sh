#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpse_sdevseo_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_su_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_su_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_su_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_su_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdevseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdevseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdevseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdevseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_su_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_su_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_su_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_su_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdevseo_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdevseo_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdevseo_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdevseo_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
