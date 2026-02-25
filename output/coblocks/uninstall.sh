#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coblocks_date_installed'
wp option delete 'wpnux_export_data'
wp option delete 'coblocks_google_recaptcha_site_key'
wp option delete 'coblocks_google_recaptcha_secret_key'
wp option delete 'coblocks_google_maps_api_key'
wp option delete 'coblocks_site_design_controls_enabled'
wp option delete 'coblocks_site_content_controls_enabled'
wp option delete 'coblocks_layout_selector_controls_enabled'
wp option delete 'coblocks_custom_colors_controls_enabled'
wp option delete 'coblocks_gradient_presets_enabled'
wp option delete 'coblocks_color_panel_controls_enabled'
wp option delete 'coblocks_typography_controls_enabled'
wp option delete 'coblocks_animation_controls_enabled'

# Delete Transients
wp transient delete 'coblocks_template_parts_query'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coblocks_accordion_ie_support'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coblocks_accordion_ie_support'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coblocks_accordion_ie_support'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coblocks_accordion_ie_support'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coblocks_attr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coblocks_attr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coblocks_attr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coblocks_attr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coblocks_dimensions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coblocks_dimensions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coblocks_dimensions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coblocks_dimensions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coblocks_responsive_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coblocks_responsive_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coblocks_responsive_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coblocks_responsive_height'"
