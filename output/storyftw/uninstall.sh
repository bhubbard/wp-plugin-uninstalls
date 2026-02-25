#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_storyftw_dashicon_classes_%' OR option_name LIKE '_site_transient_storyftw_dashicon_classes_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%story_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%story_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%story_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%story_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%palettes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%palettes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%palettes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%palettes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
