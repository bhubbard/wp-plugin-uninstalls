#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbt_plugin_version'
wp option delete 'bbt_pinterest_db_version'
wp option delete 'account'

