#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nbc-connection'
wp option delete 'nbc_advanced_settings'
wp option delete 'nbc_design_settings'
wp option delete 'nbc_general_settings'
wp option delete '_nbc_plugin_version'

# Delete Transients
wp transient delete '_nbc_page_welcome_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_neo_bootstrap_carousel_slide_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_neo_bootstrap_carousel_slide_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_neo_bootstrap_carousel_slide_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_neo_bootstrap_carousel_slide_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_neo_bootstrap_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_neo_bootstrap_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_neo_bootstrap_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_neo_bootstrap_carousel'"
