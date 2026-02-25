#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'back_list_blog'
wp option delete 'back_list_white'
wp option delete 'back_list_black'

