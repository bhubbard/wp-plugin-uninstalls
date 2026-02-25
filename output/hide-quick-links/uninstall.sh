#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_links'
wp option delete 'plugin_link'
wp option delete 'comment_link'
wp option delete 'option_link'

