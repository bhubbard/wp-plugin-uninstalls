#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uploadmate_enable_uploads'
wp option delete 'uploadmate_max_file_size'
wp option delete 'uploadmate_upload_label'
wp option delete 'uploadmate_settings'
wp option delete 'uploadmate_activated_at'

