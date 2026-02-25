#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_rest_api_controller_post_types'
wp option delete 'wp_rest_api_controller_taxonomies'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_meta_keys' OR option_name LIKE '_site_transient_%_meta_keys'"

