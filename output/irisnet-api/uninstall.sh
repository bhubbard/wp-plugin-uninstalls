#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'irisnet_plugin_licenses'
wp option delete 'irisnet_plugin_rules'
wp option delete 'irisnet_plugin_version'

