#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rwctm_global_options'
wp option delete 'rwctm_activation_time'
wp option delete 'rwctm_teamLists'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_option'"
wp option delete 'rwctm_spare_me'
wp option delete 'rwctm_teamIDs'
wp option delete 'rwctm_memberCount'
wp option delete 'rwctm_IDsSerial'
wp option delete 'external_updates-rwc-team-members'

