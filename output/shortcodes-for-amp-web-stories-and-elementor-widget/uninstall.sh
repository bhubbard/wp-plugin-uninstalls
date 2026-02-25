#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WSAE-v'
wp option delete 'WSAE-type'
wp option delete 'wsae-installDate'
wp option delete 'wsae-alreadyRated'

