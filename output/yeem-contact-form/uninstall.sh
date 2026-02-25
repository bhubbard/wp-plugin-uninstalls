#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yeem_your_name'
wp option delete 'yeem_sender_email_address'
wp option delete 'yeem_email_subject'
wp option delete 'yeem_confirmation_msg'
wp option delete 'yeem_email_msg'
wp option delete 'yeem_form_elements'

