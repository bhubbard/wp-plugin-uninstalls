#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'get_option'
wp option delete 'allow_permalinks'
wp option delete 'new_tab'

