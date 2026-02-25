#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cms_tpv_show_promo'
wp option delete 'cms_tpv_options'
wp option delete 'cms_tpv_show_annoying_little_box'
wp option delete 'cms_tpv_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
