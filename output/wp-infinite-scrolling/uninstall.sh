#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpifs_container_selector'
wp option delete 'wpifs_post_selector'
wp option delete 'wpifs_enabled'
wp option delete 'wpifs_pagination_selector'
wp option delete 'wpifs_next_selector'
wp option delete 'wpifs_loading_html'

