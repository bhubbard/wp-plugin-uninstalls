#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a2zaal_post_types'
wp option delete 'rewrite_rules'
wp option delete 'a2zaal_processing_counts'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

