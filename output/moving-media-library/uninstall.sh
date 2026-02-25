#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moving_media_library_number_files'
wp option delete 'moving_media_library_mail_send'
wp option delete 'moving_media_library_export_files'

