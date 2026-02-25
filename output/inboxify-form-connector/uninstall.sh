#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inboxify_fc_api_key'
wp option delete 'inboxify_fc_api_secret'
wp option delete 'inboxify_fc_lists'
wp option delete 'inboxify_fc_plugin_version'
wp option delete 'inboxify_fc_mappings'

