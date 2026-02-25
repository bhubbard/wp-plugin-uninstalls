#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_autoinc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_misc_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ent_map_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attr_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cust_roles'"
wp option delete 'emd_session_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_shortcodes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_attr_tax_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tax_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shc_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ent_list'"
wp option delete 'dashboard_widget_options'
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
wp option delete 'secure_cookies'
wp option delete 'cookie_http_only'
wp option delete 'session_delete_batch_size'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_init_tax'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_setup_pages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_views'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_widg_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_glob_init_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_init_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_glob_forms_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_has_incoming_email'"
wp option delete 'emd_inc_email_apps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_has_mailchimp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_adm_notice2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_glob_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'emd_form_id_%'"
wp option delete 'wp_easy_contact_access_views'
wp option delete 'wp_easy_contact_ent_map_list'
wp option delete 'wp_easy_contact_tax_settings'
wp option delete 'wp_easy_contact_tools'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ext_field_list'"
wp option delete 'wp_easy_contact_tracking_optin'
wp option delete 'wp_easy_contact_show_rateme_plugin_min'
wp option delete 'wp_easy_contact_ent_list'
wp option delete 'wp_easy_contact_activation_date'
wp option delete 'wp_easy_contact_tax_list'
wp option delete 'wp_easy_contact_rel_list'
wp option delete 'wp_easy_contact_shc_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'wp_easy_contact_attr_list'
wp option delete 'wp_easy_contact_setup_pages_list'
wp option delete 'emd_license_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_activate_redirect' OR option_name LIKE '_site_transient_%_activate_redirect'"

# Clear Cron Jobs
wp cron event delete 'emd_wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'emd_ratings_average_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'emd_ratings_average_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'emd_ratings_average_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'emd_ratings_average_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emd_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emd_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emd_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emd_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpas_form_submitted_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpas_form_submitted_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpas_form_submitted_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpas_form_submitted_by'"
