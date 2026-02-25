#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'systupex_default_export_format'
wp option delete 'systupex_show_system_status'
wp option delete 'systupex_allowed_roles'
wp option delete 'systupex_export_format'
wp option delete 'systupex_export_summary'
wp option delete 'systupex_export_summary_text'
wp option delete 'systupex_settings'
wp option delete 'system_update_exporter_settings'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

