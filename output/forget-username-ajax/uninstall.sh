#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fu_mail_subject'
wp option delete 'fu_mail_header'
wp option delete 'fu_mail_footer'
wp option delete 'fu_submit_val'
wp option delete 'fu_mail_body_lbl'
wp option delete 'fu_mail_success'
wp option delete 'fu_mail_error'
wp option delete 'fu_mail_email_not_exist'

