#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_fields_snapshots_event_logging'
wp option delete 'custom_fields_snapshots_delete_plugin_data'

