#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsi_snippet_code'
wp option delete 'fsi_identity'
wp option delete 'fsi_plugin_enabled'

