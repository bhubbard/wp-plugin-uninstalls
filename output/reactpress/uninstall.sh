#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'repr_version'
wp option delete 'repr_apps'
wp option delete 'graphql_general_settings'

