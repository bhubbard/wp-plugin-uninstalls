#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_browserupdate_browsers'
wp option delete 'wp_browserupdate_js'
wp option delete 'wp_browserupdate_css_buorg'

