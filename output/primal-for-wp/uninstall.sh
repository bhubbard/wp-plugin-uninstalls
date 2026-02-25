#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'primal_auto_insert_display'
wp option delete 'primal_auto_insert_color'
wp option delete 'primal_external_links'
wp option delete 'primal_plugin_version'

