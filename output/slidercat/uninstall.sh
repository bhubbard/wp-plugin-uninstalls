#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slidercat_options'
wp option delete 'default_post_edit_rows'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slidercat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slidercat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slidercat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slidercat'"
