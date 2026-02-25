#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'comments_%'"
wp option delete 'comments_1'
wp option delete 'comments_2'
wp option delete 'comments_3'
wp option delete 'comments_4'
wp option delete 'comments_5'
wp option delete 'comments_6'
wp option delete 'comments_7'
wp option delete 'comments_8'
wp option delete 'comments_9'
wp option delete 'comments_10'
wp option delete 'comments_11'

