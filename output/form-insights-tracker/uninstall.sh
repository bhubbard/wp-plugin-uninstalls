#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7submittrack_count'
wp option delete 'cf7submittrack_date'
wp option delete 'cf7submittrack_delete_data_on_uninstall'

