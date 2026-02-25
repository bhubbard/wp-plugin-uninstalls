#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iphods_activation_permissions'
wp option delete 'iphods_activation_permission'
wp option delete 'iphods_backlink_permission'
wp option delete 'iphods_affiliate_program'
wp option delete 'iphods_backlink_permissions'

