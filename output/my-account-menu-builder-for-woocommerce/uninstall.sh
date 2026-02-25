#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmab_flush_rewrite'
wp option delete 'wmab_white_label'
wp option delete 'wmab_menu_items'

