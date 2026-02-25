#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tabs_rpvsrc_recentposts_cnt'
wp option delete 'tabs_rpvsrc_recentcomments_cnt'
wp option delete 'tabs_rpvsrc_recentposts_title'
wp option delete 'tabs_rpvsrc_recentcomments_title'
wp option delete 'tabs_rpvsrc_recentcomments_lgt'

