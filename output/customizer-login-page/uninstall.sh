#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'
wp option delete 'clp_build_package'
wp option delete 'customizer_login_page_settings'
wp option delete 'awp_login_logo'
wp option delete 'awp_login_logo_width'
wp option delete 'awp_login_logo_height'
wp option delete 'awp_login_logo_padding'
wp option delete 'awp_login_bg_image'
wp option delete 'awp_login_customizer_bg_color'
wp option delete 'awp_login_customizer_form_bg_image'
wp option delete 'awp_login_customizer_form_bg_color'
wp option delete 'awp_login_customizer_form_width'
wp option delete 'awp_login_customizer_form_height'
wp option delete 'awp_login_customizer_form_padding'
wp option delete 'awp_login_customizer_form_border'
wp option delete 'awp_login_customizer_form_border_radius'
wp option delete 'awp_login_customizer_form_shadow'
wp option delete 'awp_login_customizer_form_bg_opacity'
wp option delete 'awp_login_customizer_field_width'
wp option delete 'awp_login_customizer_field_margin'
wp option delete 'awp_login_customizer_field_bg'
wp option delete 'awp_login_customizer_field_color'
wp option delete 'awp_login_customizer_field_label'
wp option delete 'awp_login_customizer_button_bg'
wp option delete 'awp_login_customizer_button_border'
wp option delete 'awp_login_customizer_button_shadow'
wp option delete 'awp_login_customizer_button_color'
wp option delete 'awp_login_customizer_button_hover_bg'
wp option delete 'awp_login_customizer_button_hover_border'
wp option delete 'awp_login_customizer_form_footer_color'
wp option delete 'awp_login_customizer_form_footer_color_hover'
wp option delete 'awp_login_customizer_other_css'
wp option delete 'lpc_login_page_id'
wp option delete 'lpc_opts'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
