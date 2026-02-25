#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phplugins_carts_show_id'
wp option delete 'phplugins_carts_no_ip'
wp option delete 'phplugins_carts_no_url'
wp option delete 'phplugins_carts_debug'
wp option delete 'phplugins_carts_migration_1_2_0_complete'
wp option delete 'phplugins_carts_version'

# Clear Cron Jobs
wp cron event delete 'phplugins_livecarts_hourly'

