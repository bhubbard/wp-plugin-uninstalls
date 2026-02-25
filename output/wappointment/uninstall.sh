#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wappo_plug_activated'
wp option delete 'sidebars_widgets'
wp option delete 'wappointment_installation_time'

# Delete Transients
wp transient delete 'update_plugins'

