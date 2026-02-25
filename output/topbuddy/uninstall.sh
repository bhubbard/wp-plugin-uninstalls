#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'topbuddy_active_bars'
wp option delete 'topbuddy_global_options'
wp option delete 'topbuddy_installed_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_topbuddy_components'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_topbuddy_components'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_topbuddy_components'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_topbuddy_components'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_topbuddy_nb_bar_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_topbuddy_nb_bar_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_topbuddy_nb_bar_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_topbuddy_nb_bar_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_topbuddy_display_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_topbuddy_display_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_topbuddy_display_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_topbuddy_display_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
