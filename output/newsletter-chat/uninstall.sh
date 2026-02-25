#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posts_title'
wp option delete 'posts_footer'
wp option delete 'nw_cng'
wp option delete 'nw_lng'

