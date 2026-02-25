#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bat_header'
wp option delete 'bat_loop'
wp option delete 'bat_sidebar'
wp option delete 'bat_footer'
wp option delete 'bat_comments'

