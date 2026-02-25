#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postfield-legend'
wp option delete 'postfield-rows'
wp option delete 'category-select'
wp option delete 'default-categoryid'
wp option delete 'prepost-code'
wp option delete 'afterpost-code'
wp option delete 'after-post-msg'
wp option delete 'notify-admin'
wp option delete 'notify-email'
wp option delete 'rc-site-key'
wp option delete 'rc-secret-key'

