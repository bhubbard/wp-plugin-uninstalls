#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_autopruneposts_conf'

# Delete Transients
wp transient delete 'auto-prune-posts-lastrun'

