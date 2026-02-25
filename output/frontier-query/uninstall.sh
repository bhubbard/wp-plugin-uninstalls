#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fq_show_msg'
wp option delete 'frontier_query_general_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%all-lists' OR option_name LIKE '_site_transient_%all-lists'"

