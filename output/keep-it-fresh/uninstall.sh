#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kif_mode'
wp option delete 'kif_cutoffdate'
wp option delete 'kif_cutoffdays'

