#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rg4wp_ignoredomains'
wp option delete 'rg4wp_js'
wp option delete 'rg4wp_pulse'
wp option delete 'rg4wp_apikey'
wp option delete 'rg4wp_noadmintracking'
wp option delete 'rg4wp_js_ignore3rdpartyerrors'
wp option delete 'rg4wp_js_tags'
wp option delete 'rg4wp_usertracking'
wp option delete 'rg4wp_status'
wp option delete 'rg4wp_tags'
wp option delete 'rg4wp_404s'
wp option delete 'rg4wp_async'

