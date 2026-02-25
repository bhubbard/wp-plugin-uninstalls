#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_es_remove_recommendations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_es_options_%'"

