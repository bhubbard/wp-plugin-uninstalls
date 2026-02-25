#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aiowpu_enabled_%'"
wp option delete 'aiowpu_db_version'
wp option delete 'aiowpu_disable_unnecessary_features_options'
wp option delete 'aiowpu_featured_image_id'

# Delete Transients
wp transient delete 'aiowpu_database_type'
wp transient delete 'aiowpu_database_version'

