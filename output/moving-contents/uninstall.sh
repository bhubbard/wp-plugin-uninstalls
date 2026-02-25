#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moving_contents_number_files'
wp option delete 'moving_contents_mail_send'
wp option delete 'moving_contents_export_files'
wp option delete 'moving_contents_max_execution_time'

