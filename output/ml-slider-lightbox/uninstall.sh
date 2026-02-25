#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metaslider_lightbox_migration_done'
wp option delete 'metaslider_lightbox_general_options'
wp option delete 'metaslider_lightbox_content_options'
wp option delete 'metaslider_lightbox_manual_options'
wp option delete 'metaslider_lightbox_appearance_options'
wp option delete 'metaslider_lightbox_icon_color_migration_done'
wp option delete 'metaslider_lightbox_background_color_migration_done'
wp option delete 'ml_lightbox_options'
wp option delete 'metaslider_lightbox_plugin_version'
wp option delete 'metaslider_lightbox_plugin_path'

# Delete Transients
wp transient delete 'metaslider_lightbox_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ml-slider_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ml-slider_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ml-slider_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ml-slider_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ml-slider_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ml-slider_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ml-slider_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ml-slider_url'"
