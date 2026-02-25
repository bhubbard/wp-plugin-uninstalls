#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_autoinc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_misc_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ent_map_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attr_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cust_roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ent_list'"
wp option delete 'emd_license_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_shortcodes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_attr_tax_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tax_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shc_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_glob_init_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_glob_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tax_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tools'"
wp option delete 'emd_inline_ent_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_add_caps'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rel_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_limitby_auth_caps'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_comment_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_setup_pages_list'"
wp option delete 'emd_activated_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_has_calendar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_setup_pages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_widg_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_init_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_has_ldap'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_views'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_settings'"
wp option delete 'employee_spotlight_access_views'
wp option delete 'employee_spotlight_ent_map_list'
wp option delete 'employee_spotlight_tax_settings'
wp option delete 'employee_spotlight_tools'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ext_field_list'"
wp option delete 'empslight_com_vcard_field_list'
wp option delete 'employee_spotlight_tracking_optin'
wp option delete 'employee_spotlight_show_rateme_plugin_min'
wp option delete 'employee_spotlight_ent_list'
wp option delete 'employee_spotlight_activation_date'
wp option delete 'employee_spotlight_tax_list'
wp option delete 'employee_spotlight_rel_list'
wp option delete 'employee_spotlight_shc_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'employee_spotlight_attr_list'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_activate_redirect' OR option_name LIKE '_site_transient_%_activate_redirect'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'emd_ratings_average_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'emd_ratings_average_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'emd_ratings_average_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'emd_ratings_average_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emd_employee_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emd_employee_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emd_employee_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emd_employee_photo'"
