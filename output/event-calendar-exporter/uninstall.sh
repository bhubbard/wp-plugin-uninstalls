#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccsve_post_type'
wp option delete 'ccsve_custom_fields'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%post_meta_keys' OR option_name LIKE '_site_transient_%post_meta_keys'"

