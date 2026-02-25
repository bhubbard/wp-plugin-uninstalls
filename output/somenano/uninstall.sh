#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '$somenano_db_version'
wp option delete '$somenano_version'
wp option delete 'somenano_options'

