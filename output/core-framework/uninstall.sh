#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'core_framework_main'
wp option delete 'core_framework_bricks_license_key'
wp option delete 'core_framework_selected_preset_backup'
wp option delete 'core_framework_oxygen_license_key'
wp option delete 'core_framework_colors'
wp option delete 'core_framework_editor_prefixed_css'
wp option delete 'core_framework_grouped_classes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete 'core_framework_oxygen_css_helper'
wp option delete 'core_framework_db_version'

# Delete Transients
wp transient delete 'core-framework-update-notice'
wp transient delete 'core_framework_updated'
wp transient delete 'core_framework_updated_time'

