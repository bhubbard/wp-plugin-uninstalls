#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mprt_records'
wp option delete 'mprt_plugin'

# Delete Transients
wp transient delete 'mprt_remote_content'

