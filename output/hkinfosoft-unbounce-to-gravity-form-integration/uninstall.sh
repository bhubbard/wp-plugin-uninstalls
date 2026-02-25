#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'u2g_plugin_version'
wp option delete 'u2g_integration_redirect'
wp option delete 'rewrite_rules'
wp option delete 'u2g_integration_options'
wp option delete 'u2g_db_version'

