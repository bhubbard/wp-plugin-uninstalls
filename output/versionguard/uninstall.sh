#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tlwpvg_m2m_id'
wp option delete 'tlwpvg_m2m_key'
wp option delete 'auto_update_core'
wp option delete 'auto_update_plugins'
wp option delete 'auto_update_themes'
wp option delete 'tlwpvg_last_sync_date'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'TLWPVG_send_installation_info'

