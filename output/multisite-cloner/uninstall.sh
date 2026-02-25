#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmuclone_default_blog'
wp option delete 'wpmuclone_copy_users'

