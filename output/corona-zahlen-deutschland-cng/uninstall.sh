#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cng-shortcode'
wp option delete 'cng-overlay'
wp option delete 'cng-autoinsert'
wp option delete 'cng-widget'

