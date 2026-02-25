#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'file_upload_types'
wp option delete 'file_upload_types_multiple_mimes'

