#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gui_option'
wp option delete 'gui_costom_css'
wp option delete 'gui_addons'
wp option delete 'gui_button_list'
wp option delete 'gui_button_order'
wp option delete 'gui_framework_available'
wp option delete 'gui_framework_googlefont'
wp option delete 'gui_google_fonts'
wp option delete 'gui_css_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gui_postmeta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gui_postmeta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gui_postmeta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gui_postmeta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gui_postmeta_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gui_postmeta_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gui_postmeta_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gui_postmeta_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gui_postmeta_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gui_postmeta_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gui_postmeta_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gui_postmeta_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gui_postmeta_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gui_postmeta_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gui_postmeta_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gui_postmeta_js'"
