#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cl_chooserole'
wp option delete 'cl_logout_redirect'
wp option delete 'cl_logout_redirect_url'
wp option delete 'cl_gcaptcha'
wp option delete 'cl_gcaptcha_sitekey'
wp option delete 'cl_hideuser'
wp option delete 'cl_nameandsurname'
wp option delete 'cl_email_username'
wp option delete 'cl_single_password'
wp option delete 'cl_antispam'
wp option delete 'cl_newuserroles'
wp option delete 'cl_termsconditions'
wp option delete 'cl_termsconditionsMSG'
wp option delete 'cl_enable_hash_in_login_page'
wp option delete 'cl_login_redirect'
wp option delete 'cl_passcomplex'
wp option delete 'cl_standby'
wp option delete 'cl_emailnotification'
wp option delete 'cl_emailnotificationcontent'
wp option delete 'cl_automatic_login'
wp option delete 'cl_emailvalidation'
wp option delete 'cl_gcaptcha_secretkey'
wp option delete 'cl_login_id'
wp option delete 'cl_login_url'
wp option delete 'cl_edit_id'
wp option delete 'cl_restore_id'
wp option delete 'cl_restore_url'
wp option delete 'cl_register_id'
wp option delete 'cl_register_url'
wp option delete 'cl_register_redirect'
wp option delete 'cl_register_redirect_url'
wp option delete 'cl_adminbar_roles'
wp option delete 'cl_adminbar'
wp option delete 'cl_dashboard'
wp option delete 'cl_edit_url'
wp option delete 'cl_termsconditionsURL'
wp option delete 'cl_url_redirect'
wp option delete 'cl_login_redirect_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cl_temporary_pass_%' OR option_name LIKE '_site_transient_cl_temporary_pass_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
