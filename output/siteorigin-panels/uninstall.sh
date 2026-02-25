#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siteorigin_panels_home_page_id'
wp option delete 'acf_version'
wp option delete 'rocket_lazyload_options'
wp option delete 'siteorigin_installer_admin_dismissed'
wp option delete 'siteorigin_premium_affiliate_id'
wp option delete 'siteorigin_installer'
wp option delete 'siteorigin_panels_settings'
wp option delete 'siteorigin_panels_display'
wp option delete 'siteorigin_panels_post_types'
wp option delete 'siteorigin_panels_is_using_bundled'
wp option delete 'siteorigin_panels_initial_version'
wp option delete 'rewrite_rules'
wp option delete 'siteorigin_panels_active_version'

# Delete Transients
wp transient delete 'siteorigin_panels_widgets'
wp transient delete 'siteorigin_panels_widget_dialog_tabs'
wp transient delete 'siteorigin_installer_product_data'
wp transient delete 'siteorigin_panels_layouts_directory_siteorigin_page_2'
wp transient delete 'siteorigin_panels_activation_welcome'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_origin_wcss:%' OR option_name LIKE '_site_transient_origin_wcss:%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_origin_widgets_css_cache:%' OR option_name LIKE '_site_transient_origin_widgets_css_cache:%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'so_panels_directory_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'so_panels_directory_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'so_panels_directory_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'so_panels_directory_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'so_panels_hide_post_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'so_panels_hide_post_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'so_panels_hide_post_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'so_panels_hide_post_notice'"
