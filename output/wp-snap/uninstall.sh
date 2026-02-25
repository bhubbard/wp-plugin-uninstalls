#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'key_snap_menu'
wp option delete 'key_snap_menumisc'
wp option delete 'key_snap_recent'
wp option delete 'key_snap_csscls1'
wp option delete 'key_snap_csscls2'
wp option delete 'key_snap_exclude'
wp option delete 'key_snap_fancyurl'
wp option delete 'key_snap_fancyurlname'
wp option delete 'key_snap_tab1'
wp option delete 'key_snap_alphabet'

