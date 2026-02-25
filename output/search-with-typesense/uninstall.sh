#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cm_typesense_plugin_activate'
wp option delete 'typesense_customizer_instant_search'
wp option delete 'cm_typesense_admin_settings'

