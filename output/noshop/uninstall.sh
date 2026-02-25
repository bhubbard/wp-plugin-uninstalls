#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'noshop_db_version'
wp option delete 'noshop_options'
wp option delete 'noshop_selectproduct'

