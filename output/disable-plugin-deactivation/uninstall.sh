#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_plugin_deactivation'
wp option delete 'disable_plugin_activation'
wp option delete 'disable_plugin_deletion'
wp option delete 'disable_plugin_update'

