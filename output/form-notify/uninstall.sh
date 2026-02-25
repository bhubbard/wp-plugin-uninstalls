#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'form_notify_line_btn_form_display'
wp option delete 'form_notify_line_btn_form_display_position'
wp option delete 'form_notify_line_btn_checkout_display'
wp option delete 'form_notify_line_btn_checkout_display_position'
wp option delete 'form_notify_line_btn_wp_form_display'
wp option delete 'form_notify_line_btn_form_display_size'
wp option delete 'form_notify_line_btn_form_display_align'
wp option delete 'form_notify_line_btn_checkout_display_size'
wp option delete 'form_notify_line_btn_checkout_display_align'
wp option delete 'form_notify_line_btn_checkout_text'
wp option delete 'form_notify_line_btn_redirect'
wp option delete 'form_notify_line_btn_user_email'
wp option delete 'form_notify_line_login_channel_id'
wp option delete 'form_notify_line_login_channel_secret'
wp option delete 'form_notify_line_btn_user_role'
wp option delete 'form_notify_line_message_token'
wp option delete 'form_notify_line_notify_token'
wp option delete 'form_notify_easygo_username'
wp option delete 'form_notify_easygo_password'
wp option delete 'form_notify_e8d_enable'
wp option delete 'form_notify_e8d_user_id'
wp option delete 'form_notify_e8d_password'
wp option delete 'form_notify_e8d_token'
wp option delete 'wc_notify_e8d_token'
wp option delete 'form_notify_mitake_username'
wp option delete 'form_notify_mitake_password'
wp option delete 'form_notify_mitake_api_url'
wp option delete 'form_notify_db_version'
wp option delete 'form_notify_mitake_enable'
wp option delete 'form_notify_easygo_enable'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_form_notify_line_state_%' OR option_name LIKE '_site_transient_form_notify_line_state_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_notify_line_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_notify_line_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_notify_line_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_notify_line_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_notify_line_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_notify_line_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_notify_line_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_notify_line_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_notify_action_module'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_notify_action_module'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_notify_action_module'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_notify_action_module'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'line_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'line_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'line_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'line_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heiblack_social_line_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heiblack_social_line_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heiblack_social_line_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heiblack_social_line_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
