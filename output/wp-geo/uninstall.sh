#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_geo_show_version_msg'
wp option delete 'wp_geo_options'
wp option delete 'wp_geo_version'

