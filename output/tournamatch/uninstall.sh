#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tournamatch_options'

# Delete Transients
wp transient delete 'trn_online_users'
wp transient delete 'update_plugins'

