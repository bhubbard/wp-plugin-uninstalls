#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_pods_gf_remember_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_pods_gf_remember_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_pods_gf_remember_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pods_gf_remember_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pods_gf_template_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pods_gf_template_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pods_gf_template_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pods_gf_template_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pods_gf_template_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pods_gf_template_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pods_gf_template_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pods_gf_template_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pods_gf_template_bcc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pods_gf_template_bcc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pods_gf_template_bcc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pods_gf_template_bcc'"
