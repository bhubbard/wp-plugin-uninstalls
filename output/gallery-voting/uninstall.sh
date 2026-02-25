#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gallery_voting_usersallowed'
wp option delete 'gallery_voting_max_all'
wp option delete 'gallery_voting_max_same'
wp option delete 'gallery_voting_tracking'
wp option delete 'gallery_voting_enable_unvoting'
wp option delete 'gallery_voting_css'

