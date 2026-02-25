#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bannerlid-collect-stats'
wp option delete 'bannerlid-enable-flash'
wp option delete 'bannerlid-version'

