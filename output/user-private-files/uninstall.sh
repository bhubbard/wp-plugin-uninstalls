#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'upfp_enable_email'
wp option delete 'upfp_email_subject'
wp option delete 'upfp_email_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upf_allowed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upf_allowed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upf_allowed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upf_allowed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upf_acs_full'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upf_acs_full'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upf_acs_full'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upf_acs_full'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upf_foldr_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upf_foldr_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upf_foldr_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upf_foldr_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upf_doc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upf_doc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upf_doc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upf_doc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upf_parent_fldr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upf_parent_fldr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upf_parent_fldr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upf_parent_fldr'"
