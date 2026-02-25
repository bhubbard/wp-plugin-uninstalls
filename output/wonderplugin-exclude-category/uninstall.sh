#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wonderplugin_exclude_blog'
wp option delete 'wonderplugin_exclude_search'
wp option delete 'wonderplugin_mainquery_only'

