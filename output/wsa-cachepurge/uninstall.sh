#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsa-cachepurge_wsa-installed'
wp option delete 'wsa-cachepurge_auto-purge'

