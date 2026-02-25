#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpnm_enable_user_registration_notification'
wp option delete 'wpnm_user_registration_email'
wp option delete 'wpnm_enable_password_change_notification'
wp option delete 'wpnm_password_change_email'

