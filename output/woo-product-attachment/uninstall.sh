#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcpoa_admin_order_tab_name'
wp option delete 'wcpoa_bulk_attachment_data'
wp option delete 'wcpoa_where_hear_about_us'
wp option delete 'wcpoa_data_submited_in_sendiblue'
wp option delete 'wcpoa_product_tab_name'
wp option delete 'wcpoa_order_tab_name'
wp option delete 'wcpoa_expired_date_label'
wp option delete 'wcpoa_default_tab_selected_flag'
wp option delete 'wcpoa_show_attachment_size_flag'
wp option delete 'wcpoa_attachments_show_in_email'
wp option delete 'wcpoa_att_download_restrict'
wp option delete 'wcpoa_att_btn_in_order_list'
wp option delete 'wcpoa_att_in_my_acc'
wp option delete 'wcpoa_att_in_thankyou'
wp option delete 'attachment_custom_style'
wp option delete 'wcpoa_product_download_type'
wp option delete 'wcpoa_is_viewable'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wcpoa_att_btn_position'
wp option delete 'wcpoa_attachments_action_on_click'
wp option delete 'wcpoa_att_download_btn'
wp option delete 'wcpoa_att_btn_in_order_down_tab'
wp option delete 'wcpoa_youtube_default_showcase_flag'
wp option delete 'wcpoa_email_order_status'
wp option delete 'wcpoa_show_checkout_user_att_flag'
wp option delete 'wcpoa_admin_order_attachments_title'
wp option delete 'wcpoa_att_default_icons'

# Delete Transients
wp transient delete '_welcome_screen_activation_redirect_data'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_attachments_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_attachments_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_attachments_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_attachments_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_attachment_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_attachment_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_attachment_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_attachment_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_attach_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_attach_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_attach_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_attach_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_attachment_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_attachment_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_attachment_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_attachment_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_attachment_ext_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_attachment_ext_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_attachment_ext_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_attachment_ext_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_attachment_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_attachment_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_attachment_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_attachment_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_product_open_window_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_product_open_window_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_product_open_window_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_product_open_window_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_product_page_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_product_page_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_product_page_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_product_page_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_product_logged_in_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_product_logged_in_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_product_logged_in_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_product_logged_in_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_expired_date_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_expired_date_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_expired_date_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_expired_date_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_expired_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_expired_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_expired_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_expired_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpoa_checkout_attachment_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpoa_checkout_attachment_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpoa_checkout_attachment_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpoa_checkout_attachment_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpoa_order_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpoa_order_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpoa_order_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpoa_order_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpoa_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpoa_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpoa_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpoa_variation'"
