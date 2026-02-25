#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kainoslt_woofeed_last_run'
wp option delete 'kainoslt_woofeed_settings'

# Delete Transients
wp transient delete 'kainoslt_woofeed_regen_pending'

