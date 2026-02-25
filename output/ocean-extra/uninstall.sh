#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ocean_notifications'
wp option delete 'owp_adobe_fonts_integration_enable_elementor'
wp option delete 'owp_adobe_fonts_integration_enable_customizer'
wp option delete 'owp_adobe_fonts_integration_project_id'
wp option delete 'owp_adobe_fonts_integration'
wp option delete 'oe-adobe-fonts'
wp option delete 'oceanwp_bundle_key'
wp option delete 'oceanwp_options'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'oe-icons'
wp option delete 'allowedthemes'
wp option delete 'ocean_installing_template_data'
wp option delete 'ocean_downloaded_demo_path'
wp option delete 'ocean_import_data_content_path'
wp option delete 'ocean_wp_importer_instance'
wp option delete 'ocean_import_data_theme_settings_path'
wp option delete 'ocean_import_data_widgets_path'
wp option delete 'ocean_import_data_form_path'
wp option delete '_wc_needs_pages'
wp option delete 'woocommerce_single_image_width'
wp option delete 'woocommerce_thumbnail_image_width'
wp option delete 'woocommerce_thumbnail_cropping'
wp option delete 'woocommerce_thumbnail_cropping_custom_width'
wp option delete 'woocommerce_thumbnail_cropping_custom_height'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_experiment-e_local_google_fonts'
wp option delete 'elementor_container_width'
wp option delete '_ocean_import_menu_map'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'site_logo'
wp option delete 'owp_onboarding_completed'
wp option delete 'ocean-extra-installed-version'
wp option delete 'oceanwp_plugin_notice_permanently_dismissed'
wp option delete 'ocean_extra_dismiss_notice'
wp option delete 'ocean_extra_dismiss_rating_notice'
wp option delete 'ocean_extra_installed_time'
wp option delete 'owp_dismiss_sticky_notice'
wp option delete 'oceanwp_plugin_notice_first_dismissed'
wp option delete 'oe_panels_settings'
wp option delete 'ocean_metabox_migration_status'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_thanks_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_edit_address_page_id'
wp option delete 'woocommerce_view_order_page_id'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'oe_svg_support_active_status'
wp option delete 'fileupload_maxk'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'owp_%'"
wp option delete 'oe_metabox_posttypes_settings'
wp option delete 'oe_widgets_settings'
wp option delete 'owp_mailchimp_api_key'
wp option delete 'owp_mailchimp_list_id'
wp option delete 'owp_google_map_api'
wp option delete 'owp_recaptcha_site_key'
wp option delete 'owp_recaptcha_secret_key'
wp option delete 'owp_recaptcha_version'
wp option delete 'owp_recaptcha3_site_key'
wp option delete 'owp_recaptcha3_secret_key'
wp option delete 'owp_turnstile_site_key'
wp option delete 'owp_turnstile_secret_key'
wp option delete 'owp_turnstile_render_method'
wp option delete 'owp_turnstile_theme'
wp option delete 'oceanwp_theme_description'
wp option delete 'oceanwp_hide_oceanwp_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oceanwp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oceanwp_theme_%'"
wp option delete 'oe_library_active_status'
wp option delete 'oe_install_demos_active'
wp option delete 'owp_wizard'
wp option delete 'automatic_2nd_notice'
wp option delete '2nd_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'oe_notification_active_status'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete '_wc_activation_redirect'
wp transient delete 'oe_onboarding_color_mode'
wp transient delete 'ocean_onboarding_template_data'

# Clear Cron Jobs
wp cron event delete 'ocean_admin_notifications_update'
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'add_second_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_gallery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_gallery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_gallery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_gallery_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_gallery_link_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_gallery_link_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_gallery_link_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_gallery_link_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_shortcode_before_top_bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_shortcode_before_top_bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_shortcode_before_top_bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_shortcode_before_top_bar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_shortcode_after_top_bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_shortcode_after_top_bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_shortcode_after_top_bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_shortcode_after_top_bar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_shortcode_before_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_shortcode_before_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_shortcode_before_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_shortcode_before_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_shortcode_after_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_shortcode_after_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_shortcode_after_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_shortcode_after_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_has_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_has_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_has_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_has_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_shortcode_after_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_shortcode_after_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_shortcode_after_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_shortcode_after_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_shortcode_before_footer_widgets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_shortcode_before_footer_widgets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_shortcode_before_footer_widgets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_shortcode_before_footer_widgets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_shortcode_after_footer_widgets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_shortcode_after_footer_widgets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_shortcode_after_footer_widgets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_shortcode_after_footer_widgets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_shortcode_before_footer_bottom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_shortcode_before_footer_bottom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_shortcode_before_footer_bottom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_shortcode_before_footer_bottom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_shortcode_after_footer_bottom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_shortcode_after_footer_bottom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_shortcode_after_footer_bottom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_shortcode_after_footer_bottom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_font_family'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_font_family'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_font_family'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_font_family'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_disable_margins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_disable_margins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_disable_margins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_disable_margins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_add_body_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_add_body_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_add_body_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_add_body_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_second_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_second_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_second_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_second_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_display_top_bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_display_top_bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_display_top_bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_display_top_bar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_display_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_display_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_display_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_display_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_header_custom_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_header_custom_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_header_custom_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_header_custom_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_header_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_header_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_header_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_header_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_center_header_left_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_center_header_left_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_center_header_left_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_center_header_left_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_header_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_header_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_header_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_header_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_retina_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_retina_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_retina_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_retina_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_logo_max_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_logo_max_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_logo_max_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_logo_max_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_logo_tablet_max_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_logo_tablet_max_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_logo_tablet_max_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_logo_tablet_max_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_logo_mobile_max_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_logo_mobile_max_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_logo_mobile_max_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_logo_mobile_max_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_logo_max_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_logo_max_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_logo_max_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_logo_max_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_logo_tablet_max_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_logo_tablet_max_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_logo_tablet_max_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_logo_tablet_max_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_logo_mobile_max_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_logo_mobile_max_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_logo_mobile_max_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_logo_mobile_max_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_link_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_link_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_link_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_link_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_link_color_hover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_link_color_hover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_link_color_hover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_link_color_hover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_link_color_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_link_color_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_link_color_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_link_color_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_link_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_link_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_link_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_link_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_link_hover_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_link_hover_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_link_hover_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_link_hover_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_link_active_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_link_active_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_link_active_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_link_active_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_social_links_bg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_social_links_bg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_social_links_bg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_social_links_bg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_social_hover_links_bg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_social_hover_links_bg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_social_hover_links_bg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_social_hover_links_bg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_social_links_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_social_links_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_social_links_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_social_links_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_social_hover_links_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_social_hover_links_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_social_hover_links_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_social_hover_links_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_disable_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_disable_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_disable_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_disable_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_disable_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_disable_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_disable_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_disable_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_subheading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_subheading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_subheading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_subheading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_disable_breadcrumbs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_disable_breadcrumbs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_disable_breadcrumbs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_disable_breadcrumbs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_bg_image_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_bg_image_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_bg_image_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_bg_image_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_bg_image_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_bg_image_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_bg_image_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_bg_image_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_bg_image_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_bg_image_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_bg_image_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_bg_image_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_bg_image_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_bg_image_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_bg_image_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_bg_image_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_bg_overlay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_bg_overlay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_bg_overlay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_bg_overlay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_title_bg_overlay_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_title_bg_overlay_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_title_bg_overlay_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_title_bg_overlay_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_display_footer_widgets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_display_footer_widgets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_display_footer_widgets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_display_footer_widgets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_display_footer_bottom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_display_footer_bottom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_display_footer_bottom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_display_footer_bottom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_footer_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_footer_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_footer_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_footer_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_post_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_post_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_post_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_post_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_both_sidebars_content_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_both_sidebars_content_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_both_sidebars_content_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_both_sidebars_content_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_both_sidebars_sidebars_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_both_sidebars_sidebars_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_both_sidebars_sidebars_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_both_sidebars_sidebars_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_font_size_tablet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_font_size_tablet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_font_size_tablet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_font_size_tablet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_font_size_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_font_size_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_font_size_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_font_size_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_font_size_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_font_size_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_font_size_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_font_size_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_font_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_font_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_font_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_font_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_font_weight_tablet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_font_weight_tablet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_font_weight_tablet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_font_weight_tablet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_font_weight_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_font_weight_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_font_weight_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_font_weight_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_transform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_transform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_transform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_transform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_transform_tablet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_transform_tablet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_transform_tablet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_transform_tablet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_transform_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_transform_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_transform_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_transform_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_line_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_line_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_line_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_line_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_line_height_tablet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_line_height_tablet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_line_height_tablet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_line_height_tablet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_line_height_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_line_height_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_line_height_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_line_height_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_line_height_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_line_height_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_line_height_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_line_height_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_spacing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_spacing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_spacing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_spacing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_spacing_tablet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_spacing_tablet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_spacing_tablet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_spacing_tablet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_spacing_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_spacing_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_spacing_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_spacing_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_menu_typo_spacing_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_menu_typo_spacing_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_menu_typo_spacing_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_menu_typo_spacing_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
