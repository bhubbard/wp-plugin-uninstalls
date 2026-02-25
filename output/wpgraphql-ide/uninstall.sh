#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgraphql_ide_capabilities'
wp option delete 'graphql_ide_settings'

