#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedox_database_optimization'
wp option delete 'speedox_optimized_image_count'
wp option delete 'speedox_cleaned_db_tables'

# Delete Transients
wp transient delete 'speedox_admin_notice'

