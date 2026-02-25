#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moving_users_export_files'
wp option delete 'moving_users_number_files'
wp option delete 'moving_users_mail_send'

