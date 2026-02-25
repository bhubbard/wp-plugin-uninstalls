#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dot_pages_enable'
wp option delete 'dot_pages_slug'
wp option delete 'pages_mode'
wp option delete 'dot_pages_mode'

