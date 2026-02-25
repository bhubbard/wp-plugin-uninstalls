#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's3spaces_key'
wp option delete 's3spaces_secret'
wp option delete 's3spaces_endpoint'
wp option delete 's3spaces_container'
wp option delete 's3spaces_storage_path'
wp option delete 's3spaces_storage_file_only'
wp option delete 's3spaces_storage_file_delete'
wp option delete 's3spaces_filter'

