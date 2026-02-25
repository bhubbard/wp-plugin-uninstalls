#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wposwidget_new'
wp option delete 'wposcdir'
wp option delete 'wposcimh_w'
wp option delete 'wposcimw_w'
wp option delete 'limit_new_w'
wp option delete 'wposwidget_rand'
wp option delete 'limit_rand_w'
wp option delete 'wposcimh'
wp option delete 'wposcimw'
wp option delete 'limit_new'
wp option delete 'limit_rand'
wp option delete 'limit_best'

