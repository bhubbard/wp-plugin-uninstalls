#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_register_emailislogin'
wp option delete 'login_register_expiredpassword_errorcode'
wp option delete 'login_register_login_post'
wp option delete 'login_register_logout_post'
wp option delete 'login_register_lostpassword_post'
wp option delete 'login_register_minpassword_length'
wp option delete 'login_register_pullcssandjavascriptintoview'
wp option delete 'login_register_ajaxonlyfeatures'
wp option delete 'login_register_resetpassword_post'
wp option delete 'login_register_tell_admin_when_password_recovered'
wp option delete 'login_register_userregistration'
wp option delete 'login_register_userregistration_post'
wp option delete 'login_register_invitation_codes'

