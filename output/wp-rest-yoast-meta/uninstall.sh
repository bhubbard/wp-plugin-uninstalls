#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_rest_yoast_meta_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yoast_meta_%' OR option_name LIKE '_site_transient_yoast_meta_%'"

