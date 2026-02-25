#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_nr_capture_urls'
wp option delete 'active_sitewide_plugins'

