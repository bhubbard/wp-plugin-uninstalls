#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpinfobox_maxitems'
wp option delete 'wpinfobox_css'
wp option delete 'wpinfobox_on_posts'
wp option delete 'wpinfobox_on_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinfobox_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinfobox_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinfobox_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinfobox_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinfobox_lead'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinfobox_lead'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinfobox_lead'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinfobox_lead'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpinfobox_item_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpinfobox_item_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpinfobox_item_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpinfobox_item_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinfobox_copy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinfobox_copy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinfobox_copy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinfobox_copy'"
