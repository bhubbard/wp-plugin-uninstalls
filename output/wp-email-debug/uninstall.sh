#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPMDBUG_enabled'
wp option delete 'WPMDBUG_email'
wp option delete 'WPMDBUG_plugins'

