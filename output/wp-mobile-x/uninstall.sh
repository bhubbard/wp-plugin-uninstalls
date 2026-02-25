#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mobx_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcom_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcom_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcom_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcom_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcom_metas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcom_metas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcom_metas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcom_metas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'views'"
