#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dos_key'
wp option delete 'dos_secret'
wp option delete 'dos_endpoint'
wp option delete 'dos_container'
wp option delete 'dos_storage_path'
wp option delete 'dos_storage_file_only'
wp option delete 'dos_storage_file_delete'
wp option delete 'dos_filter'

