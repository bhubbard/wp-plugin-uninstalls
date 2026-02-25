#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subscription_license_active'
wp option delete 'instant_popup_subscription_activated'
wp option delete 'instant_popup_builder_db_active'
wp option delete 'instant_popup_builder_db_debug'
wp option delete 'instant_popup_builder_preserve_analytics'
wp option delete 'instant_popup_builder_cleanup_options'
wp option delete 'instant_popup_analytics_dashboard_widget'
wp option delete 'ipb_show_review_notice'
wp option delete 'ipb_review_show_date'
wp option delete 'instant_popup_subscription_settings'
wp option delete 'instant_popup_builder_backup_before_delete'
wp option delete 'instant_popup_builder_confirm_deletion'
wp option delete 'instant_popup_builder_exit'
wp option delete 'instant_popup_builder_scroll'
wp option delete 'instant_popup_woocommerce'
wp option delete 'ipb_brevo_api_key'
wp option delete 'ipb_brevo_list_id'
wp option delete 'ipb_activecampaign_api_url'
wp option delete 'ipb_activecampaign_api_key'
wp option delete 'ipb_activecampaign_list_id'
wp option delete 'ipb_getresponse_api_key'
wp option delete 'ipb_getresponse_campaign_id'
wp option delete 'ipb_smtp_host'
wp option delete 'ipb_smtp_port'
wp option delete 'ipb_smtp_username'
wp option delete 'ipb_smtp_password'
wp option delete 'ipb_smtp_encryption'
wp option delete 'ipb_smtp_from_email'
wp option delete 'ipb_smtp_from_name'
wp option delete 'ipb_active_integration'
wp option delete 'ipb_subscribers_per_page'
wp option delete 'ipb_show_campaign_names'
wp option delete 'ipb_show_date_created'
wp option delete 'ipb_show_id_column'
wp option delete 'ipb_show_name_column'
wp option delete 'ipb_show_email_column'
wp option delete 'ipb_show_campaign_column'
wp option delete 'ipb_show_privacy_column'
wp option delete 'ipb_show_status_column'
wp option delete 'ipb_show_actions_column'
wp option delete 'ipb_default_status_filter'
wp option delete 'instant_popup_builder_scroll_plugin'
wp option delete 'instant_popup_builder_inactivity_plugin'
wp option delete 'instant_popup_builder_adblock_plugin'
wp option delete 'instant_popup_builder_smart_plugin'
wp option delete 'instant_popup_woocommerce_plugin'
wp option delete 'ipb_pdf_enabled'
wp option delete 'analytics_plugin_active'
wp option delete 'instant_popup_custom_targeting_activated'
wp option delete 'instant_popup_scheduling_plugin_active'
wp option delete 'instant_popup_contact_form_plugin'
wp option delete 'recent_orders_license_active'
wp option delete 'ipb_geo_enabled'
wp option delete 'instant_popup_builder_advanced_triggers'
wp option delete 'instant_popup_builder_smart'
wp option delete 'ipsp_smart_popup_enabled'
wp option delete 'analytics_license_active'
wp option delete 'pdf_license_active'
wp option delete 'video_license_active'
wp option delete 'ipb_activation_date'
wp option delete 'ipb_mailchimp_api_key'
wp option delete 'ipb_mailchimp_list_id'
wp option delete 'ipb_unsubscribe_page_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ipb_verification_template_%'"
wp option delete 'instant_popup_builder_network_activated'

# Delete Transients
wp transient delete 'instant_popup_builder_popup_id'
wp transient delete 'instant_popup_builder_popup_views'
wp transient delete 'instant_popup_builder_delay'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_close_position_%' OR option_name LIKE '_site_transient_instant_popup_builder_close_position_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_close_escape_%' OR option_name LIKE '_site_transient_instant_popup_builder_close_escape_%'"
wp transient delete 'instant_popup_builder_box_outside'
wp transient delete 'instant_popup_builder_hide_close'
wp transient delete 'instant_popup_builder_limit_count'
wp transient delete 'instant_popup_builder_limit_expiry'
wp transient delete 'instant_popup_builder_popup_position'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_popup_class%' OR option_name LIKE '_site_transient_instant_popup_builder_popup_class%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_class_hover%' OR option_name LIKE '_site_transient_instant_popup_builder_class_hover%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_class_click%' OR option_name LIKE '_site_transient_instant_popup_builder_class_click%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_trigger%' OR option_name LIKE '_site_transient_instant_popup_builder_trigger%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_target_device%' OR option_name LIKE '_site_transient_instant_popup_builder_target_device%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_exit_sensivity%' OR option_name LIKE '_site_transient_exit_sensivity%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_exit_intent_options%' OR option_name LIKE '_site_transient_exit_intent_options%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_scroll_type%' OR option_name LIKE '_site_transient_instant_popup_builder_scroll_type%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_scroll_distance%' OR option_name LIKE '_site_transient_instant_popup_builder_scroll_distance%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_scroll_trigger%' OR option_name LIKE '_site_transient_instant_popup_builder_scroll_trigger%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_woo_trigger%' OR option_name LIKE '_site_transient_instant_popup_builder_woo_trigger%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_woo_condition%' OR option_name LIKE '_site_transient_instant_popup_builder_woo_condition%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instant_popup_builder_woocommerce_trigger%' OR option_name LIKE '_site_transient_instant_popup_builder_woocommerce_trigger%'"
wp transient delete 'instant_popup_builder_close_position'
wp transient delete 'instant_popup_builder_close_escape'
wp transient delete 'instant_popup_builder_hover_close'
wp transient delete 'back_color_toggle'
wp transient delete 'popup_theme'
wp transient delete 'background_color'
wp transient delete 'back_image_toggle'
wp transient delete 'background_image'
wp transient delete 'back_image_pos_toggle'
wp transient delete 'back_img_position'
wp transient delete 'back_image_size'
wp transient delete 'backcolor_opacity'
wp transient delete 'backimage_opacity'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_design_width%' OR option_name LIKE '_site_transient_design_width%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_design_height%' OR option_name LIKE '_site_transient_design_height%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_design_percentage%' OR option_name LIKE '_site_transient_design_percentage%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_design_percentage_toggle%' OR option_name LIKE '_site_transient_design_percentage_toggle%'"
wp transient delete 'animate_type'
wp transient delete 'animate_speed'
wp transient delete 'animate_origin'
wp transient delete 'action'
wp transient delete 'action_type'
wp transient delete 'action_popup_id'
wp transient delete 'url'
wp transient delete 'sound_open'
wp transient delete 'sound_close'
wp transient delete 'sound_open_file'
wp transient delete 'sound_close_file'
wp transient delete 'tab'
wp transient delete 'back_zindex'
wp transient delete 'template_style'
wp transient delete 'popup_main_title'
wp transient delete 'popup_description'
wp transient delete 'first_label'
wp transient delete 'first_placeholder'
wp transient delete 'email_placeholder'
wp transient delete 'email_label'
wp transient delete 'privacy_label'
wp transient delete 'pricacy_url'
wp transient delete 'terms_url'
wp transient delete 'button_text'
wp transient delete 'primary_color'
wp transient delete 'secondary_color'
wp transient delete 'text_color'
wp transient delete 'button_color'
wp transient delete 'accent_color'
wp transient delete 'background_color_custom'
wp transient delete 'text_padding_top'
wp transient delete 'text_padding_right'
wp transient delete 'text_padding_bottom'
wp transient delete 'text_padding_left'
wp transient delete 'text_border_radius'
wp transient delete 'text_font_size'
wp transient delete 'text_line_height'

# Clear Cron Jobs
wp cron event delete 'ipb_analytics_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipb_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipb_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipb_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipb_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipb_review_already_given'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipb_review_already_given'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipb_review_already_given'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipb_review_already_given'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipb_popups_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipb_popups_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipb_popups_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipb_popups_per_page'"
