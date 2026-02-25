#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'set_percentage'
wp option delete 'paypal_type'
wp option delete 'live_id'
wp option delete 'sandbox_id'
wp option delete 'camp_deadline'

# Delete Transients
wp transient delete 'camp_action_msg'
wp transient delete 'cable_del_msg'
wp transient delete 'paypal_msg'
wp transient delete 'donate_msg'
wp transient delete 'cp_user_edit_msg'
wp transient delete 'camp_create_msg'
wp transient delete 'cp_forgot_rst_msg'
wp transient delete 'cp_forgot_msg'
wp transient delete 'forgot_link_msg'
wp transient delete 'cp_user_login_msg'
wp transient delete 'cp_user_reg_msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camp_exp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camp_exp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camp_exp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camp_exp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_camp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_camp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_camp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_camp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camp_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camp_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camp_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camp_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camp_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camp_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camp_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camp_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_camp_pic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_camp_pic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_camp_pic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_camp_pic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amount_to_achieve'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amount_to_achieve'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amount_to_achieve'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amount_to_achieve'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_time_to_achieve'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_time_to_achieve'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_time_to_achieve'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_time_to_achieve'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_user_dob'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_user_dob'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_user_dob'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_user_dob'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_user_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_user_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_user_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_user_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_camp_facebook_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_camp_facebook_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_camp_facebook_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_camp_facebook_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_camp_twiiter_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_camp_twiiter_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_camp_twiiter_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_camp_twiiter_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_camp_linkedin_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_camp_linkedin_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_camp_linkedin_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_camp_linkedin_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_camp_is_live'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_camp_is_live'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_camp_is_live'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_camp_is_live'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camp_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camp_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camp_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camp_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cam_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cam_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cam_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cam_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_user_brief_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_user_brief_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_user_brief_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_user_brief_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_user_exp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_user_exp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_user_exp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_user_exp'"
