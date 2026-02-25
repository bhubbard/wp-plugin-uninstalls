#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ltb_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'LTB_DISABLE'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'LTB_DISABLE'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'LTB_DISABLE'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'LTB_DISABLE'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltb_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltb_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltb_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltb_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'LTB_BIBLE_VERSION'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'LTB_BIBLE_VERSION'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'LTB_BIBLE_VERSION'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'LTB_BIBLE_VERSION'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltb_translation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltb_translation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltb_translation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltb_translation'"
