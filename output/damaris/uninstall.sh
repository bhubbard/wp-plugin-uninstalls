#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'url'
wp option delete 'login'
wp option delete 'password'
wp option delete 'my_plugin_db_version'
wp option delete 'hidden'

