#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abt_locale'
wp option delete 'abt_sc'
wp option delete 'abt_status'
wp option delete 'abt_db_version'

