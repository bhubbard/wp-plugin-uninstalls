#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'current-post-shortcode-installed'
wp option delete 'current-post-shortcode-version'

