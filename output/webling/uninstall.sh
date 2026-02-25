#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webling-cache-state'
wp option delete 'webling-options'
wp option delete 'webling-db-version'

