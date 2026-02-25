#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'organic_widget-area'
wp option delete 'organic_widgets_install_date'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'organic_widgets_saved_widgets'
wp option delete 'organic_widgets_settings'
wp option delete 'recently_activated'
wp option delete 'organic_widgets_activation_redirect'
wp option delete 'classic-editor-replace'

# Delete Transients
wp transient delete 'ocdi_importer_data'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
