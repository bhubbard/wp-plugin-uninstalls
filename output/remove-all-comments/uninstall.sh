#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'remove_all_is_page'
wp option delete 'remove_all_is_post'
wp option delete 'remove_all_is_all'

