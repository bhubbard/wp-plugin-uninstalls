#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theme_mods_enigma'
wp option delete 'enigma_options'
wp option delete 'weblizar_options'
wp option delete 'creative_general_options'
wp option delete 'explora_options'
wp option delete 'guardian_options'
wp option delete 'health_options'
wp option delete 'scoreline_options'
wp option delete 'chronicle_theme_options'
wp option delete 'green-lantern_options_gl'
wp option delete 'free_theme_data'
wp option delete 'enigma_options_pro'
wp option delete 'nineteen_theme_front_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
