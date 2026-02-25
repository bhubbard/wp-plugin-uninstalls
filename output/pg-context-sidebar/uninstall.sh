#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgeek_cs_option_ver'
wp option delete 'pgeek_cs_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgeek_cs_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgeek_cs_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgeek_cs_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgeek_cs_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgeek_cs_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgeek_cs_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgeek_cs_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgeek_cs_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgeek_cs_template_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgeek_cs_template_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgeek_cs_template_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgeek_cs_template_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgeek_cs_display_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgeek_cs_display_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgeek_cs_display_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgeek_cs_display_from'"
