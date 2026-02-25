#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'himiPlugin_options'
wp option delete 'himiPluginFilter_groups'
wp option delete 'himiPluginFilter_selected'
wp option delete 'himiPluginFilter_plugins'
wp option delete 'himiPluginComment_comments'

