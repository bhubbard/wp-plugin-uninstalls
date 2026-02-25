#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instagram-a5-%' OR option_name LIKE '_site_transient_instagram-a5-%'"

