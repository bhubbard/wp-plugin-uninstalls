#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'key'
wp option delete 'is-not-first-load'
wp option delete 'enable-rss-rewrites'

