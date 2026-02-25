#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'discography'
wp option delete 'discography_db_version'
wp option delete 'discography_plugin_version'

