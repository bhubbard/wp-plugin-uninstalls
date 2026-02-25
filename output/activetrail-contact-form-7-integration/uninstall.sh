#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formid'
wp option delete 'emailshortcode'
wp option delete 'approvalcheckbox'
wp option delete 'activetraillogin'
wp option delete 'apipassword'
wp option delete 'zeevgroupid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_activetrail_addon_tag_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key11'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_activetrail_addon_tag_key11'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key11'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key11'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key22'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_activetrail_addon_tag_key22'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key22'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key22'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key33'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_activetrail_addon_tag_key33'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key33'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key33'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key44'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_activetrail_addon_tag_key44'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key44'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key44'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key55'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_activetrail_addon_tag_key55'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key55'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_activetrail_addon_tag_key55'"
