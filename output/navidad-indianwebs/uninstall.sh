#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'set_flakeCount'
wp option delete 'set_minSize'
wp option delete 'set_maxSize'
wp option delete 'set_maxSpeed'

