#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpp_use_alternative_password_check'
wp option delete 'mpp_delete_used_passwords'
wp option delete 'mpp_used_passwords'
wp option delete 'mpp_password_expire_hours'
wp option delete 'mpp_used_pw_deletion_notification_email'

