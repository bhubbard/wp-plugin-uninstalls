#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbst_settings'
wp option delete 'devbrothers_version'
wp option delete 'devbrothers_settings'

# Delete Transients
wp transient delete 'devbrothers_plugins_cache'

