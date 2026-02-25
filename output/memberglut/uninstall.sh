#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'memberglut_pro_default_expiration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'memberglut_pro_role_expiration_%'"
wp option delete 'memberglut_whole_site_login_control'
wp option delete 'memberglut_custom_login_url'
wp option delete 'memberglut_whole_site_allowed_pages'
wp option delete 'memberglut_custom_register_url'
wp option delete 'memberglut_enable_content_restriction'
wp option delete 'memberglut_membership_page_id'
wp option delete 'memberglut_restriction_message'
wp option delete 'memberglut_default_role'
wp option delete 'memberglut_override_wp_login'
wp option delete 'memberglut_custom_lostpassword_url'
wp option delete 'memberglut_hide_admin_bar'
wp option delete 'memberglut_auto_login_after_register'
wp option delete 'memberglut_login_redirect'
wp option delete 'memberglut_logout_redirect_url'
wp option delete 'memberglut_remove_data_on_uninstall'
wp option delete 'memberglut_show_welcome_notice'
wp option delete 'memberglut_registered_capabilities'
wp option delete 'memberglut_capability_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'memberglut_feature_settings_%'"
wp option delete 'memberglut_restriction_redirect'
wp option delete 'memberglut_logout_redirect'
wp option delete 'mglut_plugin_activated'
wp option delete 'mglut_dismiss_leave_review_forever'
wp option delete 'mglut_install_date'
wp option delete 'mglut_cpf_select_multi_selectable'
wp option delete 'mglut_debug_log_token'
wp option delete 'wp_user_cover_default_image_url'

# Delete Transients
wp transient delete 'memberglut_redirect_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_pro_restriction_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_pro_restriction_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_pro_restriction_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_pro_restriction_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_pro_restriction_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_pro_restriction_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_pro_restriction_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_pro_restriction_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_restriction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_restriction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_restriction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_restriction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_hide_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_hide_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_hide_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_hide_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_allow_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_allow_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_allow_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_allow_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_required_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_required_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_required_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_required_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_redirect_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_redirect_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_redirect_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_redirect_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_restriction_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_restriction_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_restriction_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_restriction_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_show_required_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_show_required_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_show_required_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_show_required_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_excerpt_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_excerpt_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_excerpt_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_excerpt_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_custom_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_custom_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_custom_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_custom_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_teaser_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_teaser_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_teaser_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_teaser_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_memberglut_activities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_memberglut_activities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_memberglut_activities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_memberglut_activities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mglut_profile_cover_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mglut_profile_cover_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mglut_profile_cover_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mglut_profile_cover_image'"
