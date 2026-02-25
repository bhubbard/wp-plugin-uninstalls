#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwpb_version'
wp option delete 'dwpb_previous_version'

# Delete Transients
wp transient delete 'wc_count_comments'

