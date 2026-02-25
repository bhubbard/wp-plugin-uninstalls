#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grd_token'
wp option delete 'grd_user'
wp option delete 'grd_repo'

