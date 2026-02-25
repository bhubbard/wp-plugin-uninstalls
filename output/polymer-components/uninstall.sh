#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'polymer-options'
wp option delete 'widget_polymer_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poly_autop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poly_autop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poly_autop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poly_autop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poly_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poly_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poly_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poly_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poly_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poly_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poly_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poly_blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poly_iconsets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poly_iconsets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poly_iconsets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poly_iconsets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poly_javascript'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poly_javascript'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poly_javascript'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poly_javascript'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poly_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poly_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poly_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poly_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poly_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poly_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poly_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poly_tags'"
