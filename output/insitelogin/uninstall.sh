#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'insitelogin_login_page'
wp option delete 'insitelogin_logged_in'
wp option delete 'insitelogin_logged_in_title'
wp option delete 'insitelogin_logged_out_title'
wp option delete 'insitelogin_text_login'
wp option delete 'insitelogin_text_lostpassword'
wp option delete 'insitelogin_text_retrievepassword'
wp option delete 'insitelogin_text_resetpass'
wp option delete 'insitelogin_text_register'

