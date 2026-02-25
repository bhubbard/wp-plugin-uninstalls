#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_onboarded'
wp option delete 'cww_fresh_website_activate'
wp option delete '_cs_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete '_wc_needs_pages'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_load_fa4_shim'
wp option delete 'elementor_container_width'

# Delete Transients
wp transient delete '_wc_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'portfolio_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'portfolio_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'portfolio_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'portfolio_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'portfolip_skills'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'portfolip_skills'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'portfolip_skills'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'portfolip_skills'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'portfolio_company_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'portfolio_company_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'portfolio_company_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'portfolio_company_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'portfolio_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'portfolio_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'portfolio_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'portfolio_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
