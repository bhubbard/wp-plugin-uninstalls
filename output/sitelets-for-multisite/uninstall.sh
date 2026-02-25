#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_elementor_widgets_restrictor_options'"
wp option delete 'elementor_active_kit'
wp option delete 'MULTISITE_SITELETS_license_key'
wp option delete 'MULTISITE_SITELETS_license_status'
wp option delete 'MULTISITE_SITELETS_site_limit'
wp option delete 'MULTISITE_SITELETS_selected_sites'
wp option delete 'MULTISITE_SITELETS_site_product'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp transient delete 'MULTISITE_SITELETS_license_check'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitelet_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitelet_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitelet_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitelet_permissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_published_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_published_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_published_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_published_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_published_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_published_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_published_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_published_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_post_revision'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_post_revision'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_post_revision'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_post_revision'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sitelet_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sitelet_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sitelet_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sitelet_media'"
