#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sms_url'
wp option delete 'sms_user'
wp option delete 'sms_password'
wp option delete 'sms_sender_id'
wp option delete 'sms_mobile'
wp option delete 'sms_msg'

