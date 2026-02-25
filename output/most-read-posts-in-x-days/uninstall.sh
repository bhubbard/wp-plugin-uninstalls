#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'most_read_days_number'
wp option delete 'most_read_post_number'
wp option delete 'most_read_show_read_counter'

# Delete Transients
wp transient delete 'most_read_posts'

