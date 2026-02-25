#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-bulk-post-status-support-types'
wp option delete 'wpbpus_remove_on_uninstall'

