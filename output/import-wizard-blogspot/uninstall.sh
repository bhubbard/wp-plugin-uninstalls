#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BLIMWI_settings'
wp option delete 'blimwi_import_completed'
wp option delete 'blimwi_rating_data'

