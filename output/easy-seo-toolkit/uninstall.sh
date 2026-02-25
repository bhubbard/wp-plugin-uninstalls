#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_est_seo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_est_seo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_est_seo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_est_seo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_est_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_est_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_est_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_est_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_est_seo_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_est_seo_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_est_seo_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_est_seo_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_est_seo_kd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_est_seo_kd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_est_seo_kd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_est_seo_kd'"
