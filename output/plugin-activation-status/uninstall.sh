#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pas_inactive_plugins'
wp option delete 'pas_active_plugins'

