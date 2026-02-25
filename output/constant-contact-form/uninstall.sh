#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccf_username'
wp option delete 'ccf_caption'
wp option delete 'ccf_with_in_textbox'
wp option delete 'ccf_button'
wp option delete 'ccf_password'
wp option delete 'ccf_group'
wp option delete 'ccf_title'
wp option delete 'ccf_adminemail'
wp option delete 'ccf_fromemail'
wp option delete 'ccf_adminmail'
wp option delete 'ccf_adminmail_subject'
wp option delete 'ccf_adminmail_content'
wp option delete 'ccf_usermail'
wp option delete 'ccf_usermail_subject'
wp option delete 'ccf_usermail_content'
wp option delete 'ccf_homeurl'

