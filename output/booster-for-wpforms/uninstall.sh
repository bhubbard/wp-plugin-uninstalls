#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bfwpf_licenses'
wp option delete 'wpforms_settings'

# Delete Transients
wp transient delete 'update_plugins'

