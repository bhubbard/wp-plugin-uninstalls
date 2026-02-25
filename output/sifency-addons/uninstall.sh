#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sifency_addons_version'
wp option delete 'sifency_addons_widget_analytics'
wp option delete 'sifency_subscribers'
wp option delete 'sifency_feature_requests'
wp option delete 'sifency_addons_settings'
wp option delete 'sifency_addons_rollback_history'
wp option delete 'sifency_addons_version_history'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'sifency_uninstall_flag'
wp option delete 'woocommerce_breadcrumb_delimiter'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'sifency_addons_stored_version'
wp option delete 'sifency_license_instance_id'
wp option delete 'sifency_addons_pro_active'
wp option delete 'sifency-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sifency_widget_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sifency_widget_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sifency_widget_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sifency_widget_favorites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'career_single_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'career_single_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'career_single_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'career_single_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_single_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_single_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_single_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_single_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_options_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_options_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_options_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_options_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sifency_builder_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sifency_builder_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sifency_builder_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sifency_builder_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_themebuilder_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_themebuilder_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_themebuilder_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_themebuilder_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sifency_initial_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sifency_initial_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sifency_initial_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sifency_initial_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
