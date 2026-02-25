#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tbfe_settings_page'
wp option delete 'tbfe_settings_post'
wp option delete 'tbfe_settings_archive'
wp option delete 'tbfe_settings_404'
wp option delete 'elementor_cpt_support'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tbfe_settings_%'"
wp option delete 'tbfe_settings'
wp option delete 'tbfe_active_time'
wp option delete 'tbfe_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tbfe_elementor_header_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tbfe_elementor_header_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tbfe_elementor_header_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tbfe_elementor_header_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tbfe_elementor_footer_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tbfe_elementor_footer_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tbfe_elementor_footer_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tbfe_elementor_footer_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbfe_elementor_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbfe_elementor_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbfe_elementor_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbfe_elementor_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbfe_elementor_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbfe_elementor_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbfe_elementor_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbfe_elementor_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbfe_elementor_header_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbfe_elementor_header_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbfe_elementor_header_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbfe_elementor_header_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbfe_elementor_footer_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbfe_elementor_footer_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbfe_elementor_footer_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbfe_elementor_footer_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbfe_elementor_header_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbfe_elementor_header_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbfe_elementor_header_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbfe_elementor_header_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbfe_elementor_footer_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbfe_elementor_footer_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbfe_elementor_footer_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbfe_elementor_footer_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
