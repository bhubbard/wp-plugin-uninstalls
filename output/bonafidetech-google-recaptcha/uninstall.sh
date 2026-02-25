#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BFTGR_user_roles'
wp option delete 'BFTGR_error_message'
wp option delete 'BFTGR_type'
wp option delete 'BFTGR_site_key'
wp option delete 'BFTGR_secret_key'
wp option delete 'BFTGR_theme'
wp option delete 'BFTGR_size'
wp option delete 'BFTGR_wp_login'
wp option delete 'BFTGR_wp_registration'
wp option delete 'BFTGR_wp_forgot_pwd'
wp option delete 'BFTGR_wp_comment'
wp option delete 'BFTGR_wc_login'
wp option delete 'BFTGR_wc_registration'
wp option delete 'BFTGR_wc_forgot_pwd'

