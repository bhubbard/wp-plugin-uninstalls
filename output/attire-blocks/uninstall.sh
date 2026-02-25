#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__atbs_disabled_assets'
wp option delete '__atbs_pro_license'
wp option delete 'attire_options'
wp option delete '__atbs_pro'
wp option delete '__wpdm_enc_key'
wp option delete '__atbs_last_check'
wp option delete '__atbs_rev'
wp option delete '__atbs_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_atbs_toc_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_atbs_toc_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_atbs_toc_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_atbs_toc_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'atbs_voting_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'atbs_voting_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'atbs_voting_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atbs_voting_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'atbs_upvotes_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'atbs_upvotes_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'atbs_upvotes_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atbs_upvotes_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'atbs_downvotes_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'atbs_downvotes_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'atbs_downvotes_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atbs_downvotes_%'"
