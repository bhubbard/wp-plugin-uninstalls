#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bvd_post_version'
wp option delete 'bvd_post_type'
wp option delete 'bvd_connection'
wp option delete 'bvd_show_version'
wp option delete 'bvd_favorites'

