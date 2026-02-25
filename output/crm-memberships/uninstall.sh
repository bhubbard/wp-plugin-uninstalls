#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ntzcrm_log_redirect_url'
wp option delete 'ntzcrm_login_url'
wp option delete 'ntzcrmEnableTosendWelcomeMailOnUserCreation'
wp option delete 'ntzcrmEnableTosendCreatePasswordMailOnUserCreation'
wp option delete 'ntzcrm_opt_default_navlinks'
wp option delete 'ntzcrm_enable_partial_view'
wp option delete 'ntzcrm_subscribe_button_link'
wp option delete 'ntzcrm_enable_partial_text_limit'
wp option delete 'ntzcrm_logout_redirect_url'
wp option delete 'is_actived_ntzcrm'
wp option delete 'ntzcrm_enable_log'
wp option delete 'ntzcrm_api_token'
wp option delete 'ntzcrm_api_key'
wp option delete 'ntzcrm_login_partial_view_text'
wp option delete 'ntzcrm_subscribe_partial_view_text'
wp option delete 'ntzcrm_logo'
wp option delete 'ntzcrm_publ_welcome_title'
wp option delete 'ntzcrm_publ_welcome_text'
wp option delete 'ntzcrm_service_url'
wp option delete 'ntzcrm_disabled_post_tracking'
wp option delete 'ntzcrm_welcome_mail_template'
wp option delete 'ntzcrmCreatePasswordMailTemplate'
wp option delete 'ntzcrm_resetpassword_mail_template'
wp option delete 'ntzcrm_enable_change_password'
wp option delete 'ntzcrm_user'
wp option delete 'ntzcrm_password'
wp option delete 'ntzcrm_infu_form_url'
wp option delete 'ntzcrm_changepassword_url'
wp option delete 'ntzcrm_infu_form_id'

# Delete Transients
wp transient delete 'cache_ntzcrm_tag'
wp transient delete 'cache_ntzcrm_ifs_tag_map'
wp transient delete 'cache_ntzcrm_tag_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'firstName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'firstName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'firstName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'firstName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ntzcrm_user_tag_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ntzcrm_user_tag_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ntzcrm_user_tag_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ntzcrm_user_tag_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ntzcrm_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ntzcrm_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ntzcrm_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ntzcrm_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_fronted_publication'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_fronted_publication'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_fronted_publication'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_fronted_publication'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%login_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%login_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%login_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%login_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%access_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%access_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%access_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%access_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%noaccess_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%noaccess_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%noaccess_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%noaccess_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%publication'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%publication'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%publication'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%publication'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_ntzcrm_publication'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_ntzcrm_publication'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_ntzcrm_publication'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_ntzcrm_publication'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_ntzcrm_login_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_ntzcrm_login_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_ntzcrm_login_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_ntzcrm_login_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'all_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'all_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'all_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'all_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ntzcrm_access_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ntzcrm_access_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ntzcrm_access_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ntzcrm_access_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ntzcrm_noaccess_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ntzcrm_noaccess_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ntzcrm_noaccess_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ntzcrm_noaccess_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ntzcrm_user_tag_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ntzcrm_user_tag_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ntzcrm_user_tag_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ntzcrm_user_tag_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_crm-memberships_login_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_crm-memberships_login_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_crm-memberships_login_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_crm-memberships_login_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm-memberships_access_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm-memberships_access_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm-memberships_access_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm-memberships_access_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm-memberships_noaccess_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm-memberships_noaccess_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm-memberships_noaccess_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm-memberships_noaccess_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ntzcrm_user_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ntzcrm_user_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ntzcrm_user_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ntzcrm_user_contact_id'"
