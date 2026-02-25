#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'priority'
wp option delete 'filename'
wp option delete 'zip'
wp option delete 'google'
wp option delete 'ask'
wp option delete 'bing'

