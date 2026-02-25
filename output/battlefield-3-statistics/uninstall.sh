#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'playerData'
wp option delete 'player'
wp option delete 'ident'
wp option delete 'key'

