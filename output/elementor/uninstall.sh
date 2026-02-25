#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_tracker_notice'
wp option delete 'elementor_local_google_fonts'
wp option delete 'elementor_beta'
wp option delete 'elementor_element_cache_ttl'
wp option delete '_elementor_pro_license_v2_data'
wp option delete 'elementor_enable_inspector'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'elementor_css_print_method'
wp option delete '_elementor_local_google_fonts'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elementor_%'"
wp option delete 'elementor_log'
wp option delete 'elementor_icon_manager_needs_update'
wp option delete 'elementor_load_fa4_shim'
wp option delete 'elementor_elements_usage'
wp option delete '_elementor_general_settings'
wp option delete 'elementor_space_between_widgets'
wp option delete 'elementor_viewport_md'
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_experiment-ai-layout'
wp option delete 'elementor_experiment-block_editor_assets_optimize'
wp option delete 'elementor_experiment-container_grid'
wp option delete 'elementor_experiment-display-conditions'
wp option delete 'elementor_experiment-e_dom_optimization'
wp option delete 'elementor_experiment-e_global_styleguide'
wp option delete 'elementor_experiment-e_image_loading_optimization'
wp option delete 'elementor_experiment-e_lazyload'
wp option delete 'elementor_experiment-e_optimized_assets_loading'
wp option delete 'elementor_experiment-e_optimized_css_loading'
wp option delete 'elementor_experiment-e_scroll_snap'
wp option delete 'elementor_experiment-floating-buttons'
wp option delete 'elementor_experiment-form-submissions'
wp option delete 'elementor_experiment-link-in-bio'
wp option delete 'elementor_experiment-loop'
wp option delete 'elementor_experiment-notes'
wp option delete 'elementor_experiment-off-canvas'
wp option delete 'elementor_experiment-page-transitions'
wp option delete 'elementor_experiment-search'
wp option delete 'elementor_experiment-taxonomy-filter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_token'"
wp option delete 'elementor_edit_buttons'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'elementor_google_font'
wp option delete 'elementor_font_display'
wp option delete '_elementor_installed_time'
wp option delete 'elementor_cpt_support'
wp option delete 'elementor_allow_tracking'
wp option delete 'elementor_tracker_last_send'
wp option delete 'elementor_allow_tracking_last_update'
wp option delete 'elementor_exclude_user_roles'
wp option delete 'elementor_google_maps_api_key'
wp option delete 'elementor_disabled_elements'
wp option delete 'elementor_meta_generator_tag'
wp option delete 'elementor_optimized_gutenberg_loading'
wp option delete 'elementor_optimized_image_loading'
wp option delete 'elementor_lazy_load_background_images'
wp option delete 'elementor_safe_mode'
wp option delete 'elementor_safe_mode_created_mu_dir'
wp option delete 'elementor_safe_mode_allowed_plugins'
wp option delete 'theme_mods_elementor-safe'
wp option delete 'active_sitewide_plugins'
wp option delete 'elementor_connect_site_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_screen_completed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dismiss_connect_alert'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%editor_update_notification_dismissed'"

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'elementor_activation_redirect'
wp transient delete 'elementor_ea11y_campaign'
wp transient delete 'elementor_image_optimization_campaign'
wp transient delete 'elementor_site_mailer_campaign'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'elementor_core_campaign'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elementor_rollback_versions_%' OR option_name LIKE '_site_transient_elementor_rollback_versions_%'"
wp transient delete 'elementor_pro_free_trial_data'

# Clear Cron Jobs
wp cron event delete 'elementor/tracker/send_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_oembed_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_oembed_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_oembed_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_oembed_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_elementor_connect_common_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_elementor_connect_common_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_elementor_connect_common_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_elementor_connect_common_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_e_notifications_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_e_notifications_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_e_notifications_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_e_notifications_dismissed'"
