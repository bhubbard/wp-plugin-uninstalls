#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aFhfc_site_wide_head_code'
wp option delete 'aFhfc_head_code_priority'
wp option delete 'aFhfc_site_wide_body_code'
wp option delete 'aFhfc_site_wide_footer_code'
wp option delete 'aFhfc_footer_code_priority'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aFhfc_head_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aFhfc_head_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aFhfc_head_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aFhfc_head_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aFhfc_head_replace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aFhfc_head_replace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aFhfc_head_replace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aFhfc_head_replace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aFhfc_body_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aFhfc_body_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aFhfc_body_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aFhfc_body_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aFhfc_body_replace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aFhfc_body_replace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aFhfc_body_replace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aFhfc_body_replace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aFhfc_footer_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aFhfc_footer_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aFhfc_footer_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aFhfc_footer_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aFhfc_footer_replace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aFhfc_footer_replace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aFhfc_footer_replace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aFhfc_footer_replace'"
