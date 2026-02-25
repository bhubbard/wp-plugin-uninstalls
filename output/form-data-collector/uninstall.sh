#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fdc_upload_folder_hash'
wp option delete 'fdc_db_version'

