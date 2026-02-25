#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'make_paths_relative_settings'
wp option delete 'make_paths_relative'
wp option delete 'make_paths_relative_exclude'

