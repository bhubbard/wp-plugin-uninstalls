#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'banned_options'
wp option delete 'banned_ips'
wp option delete 'banned_ips_range'
wp option delete 'banned_hosts'
wp option delete 'banned_referers'
wp option delete 'banned_user_agents'
wp option delete 'banned_exclude_ips'
wp option delete 'banned_message'
wp option delete 'banned_stats'

