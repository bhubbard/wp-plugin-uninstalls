#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ambikly_plugin_version'
wp option delete 'ambikly_install_date'
wp option delete 'ambikly_plugin_db_version'

# Delete Transients
wp transient delete '_ambikly_activation_redirect'

