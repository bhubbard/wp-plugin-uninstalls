#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tektonic_file_upload_options'
wp option delete 'tektonic_file_upload_db_version'

