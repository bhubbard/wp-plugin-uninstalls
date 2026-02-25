-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('subscription_license_active', 'instant_popup_subscription_activated', 'instant_popup_builder_db_active', 'instant_popup_builder_db_debug', 'instant_popup_builder_preserve_analytics', 'instant_popup_builder_cleanup_options', 'instant_popup_analytics_dashboard_widget', 'ipb_show_review_notice', 'ipb_review_show_date', 'instant_popup_subscription_settings', 'instant_popup_builder_backup_before_delete', 'instant_popup_builder_confirm_deletion', 'instant_popup_builder_exit', 'instant_popup_builder_scroll', 'instant_popup_woocommerce', 'ipb_brevo_api_key', 'ipb_brevo_list_id', 'ipb_activecampaign_api_url', 'ipb_activecampaign_api_key', 'ipb_activecampaign_list_id', 'ipb_getresponse_api_key', 'ipb_getresponse_campaign_id', 'ipb_smtp_host', 'ipb_smtp_port', 'ipb_smtp_username', 'ipb_smtp_password', 'ipb_smtp_encryption', 'ipb_smtp_from_email', 'ipb_smtp_from_name', 'ipb_active_integration', 'ipb_subscribers_per_page', 'ipb_show_campaign_names', 'ipb_show_date_created', 'ipb_show_id_column', 'ipb_show_name_column', 'ipb_show_email_column', 'ipb_show_campaign_column', 'ipb_show_privacy_column', 'ipb_show_status_column', 'ipb_show_actions_column', 'ipb_default_status_filter', 'instant_popup_builder_scroll_plugin', 'instant_popup_builder_inactivity_plugin', 'instant_popup_builder_adblock_plugin', 'instant_popup_builder_smart_plugin', 'instant_popup_woocommerce_plugin', 'ipb_pdf_enabled', 'analytics_plugin_active', 'instant_popup_custom_targeting_activated', 'instant_popup_scheduling_plugin_active');
DELETE FROM wp_options WHERE option_name IN ('instant_popup_contact_form_plugin', 'recent_orders_license_active', 'ipb_geo_enabled', 'instant_popup_builder_advanced_triggers', 'instant_popup_builder_smart', 'ipsp_smart_popup_enabled', 'analytics_license_active', 'pdf_license_active', 'video_license_active', 'ipb_activation_date', 'ipb_mailchimp_api_key', 'ipb_mailchimp_list_id', 'ipb_unsubscribe_page_url', 'instant_popup_builder_network_activated', 'instant_popup_builder_popup_id', 'instant_popup_builder_popup_views', 'instant_popup_builder_delay', 'instant_popup_builder_box_outside', 'instant_popup_builder_hide_close', 'instant_popup_builder_limit_count', 'instant_popup_builder_limit_expiry', 'instant_popup_builder_popup_position', 'instant_popup_builder_close_position', 'instant_popup_builder_close_escape', 'instant_popup_builder_hover_close', 'back_color_toggle', 'popup_theme', 'background_color', 'back_image_toggle', 'background_image', 'back_image_pos_toggle', 'back_img_position', 'back_image_size', 'backcolor_opacity', 'backimage_opacity', 'animate_type', 'animate_speed', 'animate_origin', 'action', 'action_type', 'action_popup_id', 'url', 'sound_open', 'sound_close', 'sound_open_file', 'sound_close_file', 'tab', 'back_zindex', 'template_style', 'popup_main_title');
DELETE FROM wp_options WHERE option_name IN ('popup_description', 'first_label', 'first_placeholder', 'email_placeholder', 'email_label', 'privacy_label', 'pricacy_url', 'terms_url', 'button_text', 'primary_color', 'secondary_color', 'text_color', 'button_color', 'accent_color', 'background_color_custom', 'text_padding_top', 'text_padding_right', 'text_padding_bottom', 'text_padding_left', 'text_border_radius', 'text_font_size', 'text_line_height');
DELETE FROM wp_options WHERE option_name LIKE 'ipb_verification_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_close_position_%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_close_escape_%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_popup_class%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_class_hover%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_class_click%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_trigger%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_target_device%';
DELETE FROM wp_options WHERE option_name LIKE 'exit_sensivity%';
DELETE FROM wp_options WHERE option_name LIKE 'exit_intent_options%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_scroll_type%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_scroll_distance%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_scroll_trigger%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_woo_trigger%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_woo_condition%';
DELETE FROM wp_options WHERE option_name LIKE 'instant_popup_builder_woocommerce_trigger%';
DELETE FROM wp_options WHERE option_name LIKE 'design_width%';
DELETE FROM wp_options WHERE option_name LIKE 'design_height%';
DELETE FROM wp_options WHERE option_name LIKE 'design_percentage%';
DELETE FROM wp_options WHERE option_name LIKE 'design_percentage_toggle%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ipb_review_notice_dismissed', 'ipb_review_already_given', 'ipb_popups_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('ipb_review_notice_dismissed', 'ipb_review_already_given', 'ipb_popups_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('ipb_review_notice_dismissed', 'ipb_review_already_given', 'ipb_popups_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ipb_review_notice_dismissed', 'ipb_review_already_given', 'ipb_popups_per_page');

