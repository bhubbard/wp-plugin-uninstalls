#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'betterblocks_post_types'
wp option delete 'betterblocks_remove_directory'
wp option delete 'betterblocks_force_preview'
wp option delete 'betterblocks_sidebar_acf'

