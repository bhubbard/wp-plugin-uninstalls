#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secsignid_service_name'
wp option delete 'secsignid_frame'
wp option delete 'secsignid_show_on_login_page'
wp option delete 'secsign_id_cookie_secret'
wp option delete 'secsignid_allow_account_creation'
wp option delete 'secsignid_allow_account_assignment'

