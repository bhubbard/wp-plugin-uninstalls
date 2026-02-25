#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wlist_settings'
wp option delete 'wlist_list_table'
wp option delete 'wlist_list_page_table'
wp option delete 'wlist_plugin_title'

