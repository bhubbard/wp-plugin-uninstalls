#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'material_plugin_activated'
wp option delete 'material_design_recaptcha_site_key'
wp option delete 'material_design_recaptcha_client_secret'
wp option delete 'material_onboarding'
wp option delete 'auto_update_plugins'
wp option delete 'auto_update_themes'
wp option delete 'material_design_theme_activated'
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete '_material_activation_redirect'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'original_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'original_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'original_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'original_link'"
