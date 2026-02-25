#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bisteinoff_plugin_contact_data'
wp option delete 'bisteinoff_plugin_contact_shortcodes_migrated'
wp option delete 'bisteinoff_plugin_contact_shortcode_migration_completed'

# Delete Transients
wp transient delete 'bisteinoff_shortcode_check_results'
wp transient delete 'bisteinoff_shortcode_migration_results'

