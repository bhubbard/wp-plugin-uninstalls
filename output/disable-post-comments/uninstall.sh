#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'disable_post_comments_options'
wp option delete 'disable_comments_post_types'

