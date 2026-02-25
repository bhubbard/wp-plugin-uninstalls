#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipr_feednumitems'
wp option delete 'ipr_hidefeedtitle'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipr_feedtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipr_feedtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipr_feedtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipr_feedtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipr_feedurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipr_feedurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipr_feedurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipr_feedurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipr_feednumitems'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipr_feednumitems'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipr_feednumitems'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipr_feednumitems'"
