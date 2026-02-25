#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_post_nav_options'
wp option delete 'wp_post_nav_version'

# Delete Transients
wp transient delete 'wp-post-nav'

