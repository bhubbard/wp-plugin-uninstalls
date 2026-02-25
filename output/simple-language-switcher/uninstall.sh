#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sls_plugin_langs'
wp option delete 'sls_plugin_langs_backup'
wp option delete 'sls_plugin_linking'
wp option delete 'sls_plugin_linking_backup'
wp option delete 'sls_plugin_options'

