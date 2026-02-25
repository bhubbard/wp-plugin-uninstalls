#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_tinypng_duplicate'
wp option delete 'wp_tinypng_debug'
wp option delete 'wp_tinypng_children'
wp option delete 'wp_tinypng_api'

