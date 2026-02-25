#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_empdir_admin_phone'
wp option delete 'mo_emp_activation_mail'
wp option delete 'Activated_Plugin'
wp option delete 'mo_empdir_message'
wp option delete 'Activation_term_flag'
wp option delete 'template_all_emp'
wp option delete 'mo_emp_custom_fields'
wp option delete 'mo_empdir_customFields'
wp option delete 'mo_empdir_employee_taxonomies'
wp option delete 'employee-directory-department'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moemp_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moemp_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moemp_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moemp_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moemp_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moemp_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moemp_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moemp_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moemp_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moemp_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moemp_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moemp_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moemp_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moemp_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moemp_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moemp_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moemp_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moemp_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moemp_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moemp_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moemp_sample'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moemp_sample'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moemp_sample'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moemp_sample'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_moemp_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_moemp_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_moemp_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_moemp_%'"
