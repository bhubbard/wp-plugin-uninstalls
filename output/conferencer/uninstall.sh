#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conferencer_messages'
wp option delete 'conferencer_logo_regeneration_needed'
wp option delete 'conferencer_sponsors_widget_image_sizes'
wp option delete 'conferencer_caching'
wp option delete 'conferencer_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%s'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%s'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%s'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%s'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conferencer_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conferencer_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conferencer_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conferencer_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conferencer_starts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conferencer_starts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conferencer_starts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conferencer_starts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_conferencer_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_conferencer_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_conferencer_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_conferencer_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conferencer_ends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conferencer_ends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conferencer_ends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conferencer_ends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conferencer_logo_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conferencer_logo_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conferencer_logo_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conferencer_logo_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conferencer_logo_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conferencer_logo_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conferencer_logo_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conferencer_logo_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conferencer_non_session'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conferencer_non_session'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conferencer_non_session'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conferencer_non_session'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conferencer_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conferencer_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conferencer_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conferencer_link'"
