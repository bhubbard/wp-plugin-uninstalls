#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'max_upload_size'
wp option delete 'min_dpi_size'
wp option delete 'max_dpi_size'
wp option delete 'dropbox_code'
wp option delete 'dropbox_token'
wp option delete 'upload_to_dropbox'
wp option delete 'dropbox_folder_path'
wp option delete 'dropbox_user_id'
wp option delete 'upload_space_check_disabled'

