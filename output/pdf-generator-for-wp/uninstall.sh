#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_wpg_license_check'
wp option delete 'pgfw_radio_switch_demo'
wp option delete 'wps_code_migratded'
wp option delete 'pgfw_general_settings_save'
wp option delete 'pgfw_enable_tracking'
wp option delete 'pgfw_save_admin_display_settings'
wp option delete 'pgfw_header_setting_submit'
wp option delete 'pgfw_footer_setting_submit'
wp option delete 'pgfw_body_save_settings'
wp option delete 'pgfw_advanced_save_settings'
wp option delete 'pgfw_meta_fields_save_settings'
wp option delete 'pgfw_pdf_upload_save_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'copy_%'"
wp option delete 'pgfw_taxonomy_fields_save_settings'
wp option delete 'pgfw_send_invoice_for'
wp option delete 'wpg_allow_invoice_generation_for_orders'
wp option delete 'wpg_view_pdf'
wp option delete 'sub_wpg_upload_invoice_company_logo'
wp option delete 'wpg_invoice_number_renew_month'
wp option delete 'pgfw_company_name'
wp option delete 'pgfw_company_address'
wp option delete 'pgfw_company_city'
wp option delete 'pgfw_company_state'
wp option delete 'pgfw_company_pin'
wp option delete 'pgfw_company_phone'
wp option delete 'pgfw_company_email'
wp option delete 'wpg_invoice_number_prefix'
wp option delete 'wpg_invoice_number_digit'
wp option delete 'wpg_invoice_number_suffix'
wp option delete 'wpg_invoice_number_renew_date'
wp option delete 'wpg_invoice_disclaimer'
wp option delete 'wpg_invoice_color'
wp option delete 'wpg_is_add_logo_invoice'
wp option delete 'wpg_invoice_template'
wp option delete 'pgfw_coverpage_setting_save'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'wps_embed_source_linkedln'
wp option delete 'wps_embed_source_loom'
wp option delete 'wps_embed_source_twitch'
wp option delete 'wps_embed_source_ai_chatbot'
wp option delete 'wps_embed_source_canva'
wp option delete 'wps_embed_source_reddit'
wp option delete 'wps_embed_source_google_elements'
wp option delete 'wps_embed_source_calendly'
wp option delete 'wps_embed_source_strava'
wp option delete 'wps_embed_source_rss_feed'
wp option delete 'wps_embed_source_x'
wp option delete 'wps_embed_source_pdf_embed'
wp option delete 'wps_embed_source_tracking_info'
wp option delete 'wps_wpg_activated_timestamp'
wp option delete 'wpg_custom_templates_list'
wp option delete 'wpg_use_template_to_generate_pdf'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpg_template_post_types_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpg_template_items_%'"
wp option delete 'wpg_use_cover_page_template'
wp option delete 'status'
wp option delete 'wpg_company_name'
wp option delete 'wpg_company_address'
wp option delete 'wpg_company_city'
wp option delete 'wpg_company_state'
wp option delete 'wpg_company_pin'
wp option delete 'wpg_company_phone'
wp option delete 'wpg_company_email'
wp option delete 'wpg_attach_invoice_shareable_link'
wp option delete 'wpg_invoice_renew_date'
wp option delete 'wpg_current_invoice_id'
wp option delete 'wps_wpg_invoice_name'
wp option delete 'wps_wpg_custom_invoice_name'
wp option delete 'wpg_generate_invoice_from_cache'
wp option delete 'wps_pgfw_onboarding_data_skipped'
wp option delete 'wps_pgfw_onboarding_data_sent'
wp option delete 'wpg_enable_plugin'
wp option delete 'wps_all_plugins_active'
wp option delete 'mwb_wpg_license_key'
wp option delete 'wps_embed_source_wps_track_order'
wp option delete 'wps_tofwp_general_settings_saved'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wps_pgfw_notice_%' OR option_name LIKE '_site_transient_wps_pgfw_notice_%'"

# Clear Cron Jobs
wp cron event delete 'pgfw_cron_delete_pdf_from_server'
wp cron event delete 'wps_wgm_check_for_notification_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_show_cover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_show_cover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_show_cover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_show_cover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_cover_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_cover_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_cover_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_cover_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_back_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_back_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_back_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_back_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_tool_btn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_tool_btn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_tool_btn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_tool_btn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_pdf_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_pdf_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_pdf_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_pdf_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_flip_sound_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_flip_sound_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_flip_sound_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_flip_sound_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_flip_sound_volume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_flip_sound_volume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_flip_sound_volume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_flip_sound_volume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_popup_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_popup_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_popup_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_popup_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_image_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_image_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_image_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_image_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_mobileScrollSupport'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_mobileScrollSupport'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_mobileScrollSupport'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_mobileScrollSupport'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_maxShadowOpacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_maxShadowOpacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_maxShadowOpacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_maxShadowOpacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_flippingTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_flippingTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_flippingTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_flippingTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_startPage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_startPage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_startPage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_startPage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_swipeDistance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_swipeDistance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_swipeDistance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_swipeDistance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_useMouseEvents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_useMouseEvents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_useMouseEvents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_useMouseEvents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_pdf_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_pdf_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_pdf_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_pdf_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_fb_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_fb_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_fb_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fb_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgfw_pdf_open_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgfw_pdf_open_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgfw_pdf_open_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgfw_pdf_open_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgfw_pdf_open_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgfw_pdf_open_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgfw_pdf_open_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgfw_pdf_open_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgfw_last_pdf_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgfw_last_pdf_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgfw_last_pdf_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgfw_last_pdf_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgfw_pdf_view_logs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgfw_pdf_view_logs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgfw_pdf_view_logs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgfw_pdf_view_logs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpg_order_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpg_order_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpg_order_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpg_order_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
