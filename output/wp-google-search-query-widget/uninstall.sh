#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgqb_username'
wp option delete 'wpgqb_userpassword'
wp option delete 'wpgqb_timespan'
wp option delete 'wpgqb_exclude'
wp option delete 'wpgqb_gaacount'
wp option delete 'wpgqb_count'
wp option delete 'wpgqb_levels'
wp option delete 'wpgqb_searchbase'
wp option delete 'wpgqb_title'
wp option delete 'wpgqb_cachettl'

