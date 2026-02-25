#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'editoria11y_db_version'
wp option delete 'ed11y_plugin_settings'

# Delete Transients
wp transient delete 'editoria11y_settings'
wp transient delete 'ed11y_got_ids'
wp transient delete 'editoria11y_settinges'

