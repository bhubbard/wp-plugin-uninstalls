#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google-chrome-meta'
wp option delete 'google-chrome-javascript'
wp option delete 'google-chrome-version'

