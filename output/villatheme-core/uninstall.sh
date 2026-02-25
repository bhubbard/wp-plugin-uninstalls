#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp option delete 'pscw_setup_wizard'
wp option delete 'elementor_cpt_support'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_google_font'
wp option delete 'elementor_active_kit'
wp option delete 'villco'

# Delete Transients
wp transient delete 'villco_import_progress'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwcpf_filter_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwcpf_filter_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwcpf_filter_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwcpf_filter_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_footer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metabox_footer_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metabox_footer_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metabox_footer_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metabox_footer_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_villco_menu_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_villco_menu_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_villco_menu_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_villco_menu_settings'"
