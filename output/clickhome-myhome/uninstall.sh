#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myhome_version'
wp option delete 'myhome_guid'
wp option delete 'plugin_error'

