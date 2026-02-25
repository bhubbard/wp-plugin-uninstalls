#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gxsb_widget_class'
wp option delete 'gxsb_widget_title_class'
wp option delete 'category_sidebars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gx_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gx_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gx_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gx_sidebar'"
