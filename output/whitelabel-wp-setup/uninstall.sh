#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_whitelabelled_plugins'
wp option delete 'site_whitelabelled_data'

