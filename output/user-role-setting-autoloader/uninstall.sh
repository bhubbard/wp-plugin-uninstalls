#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usa_import_timestamp'
wp option delete 'usa_import_dir_path'

# Delete Transients
wp transient delete 'usa_import_data'

