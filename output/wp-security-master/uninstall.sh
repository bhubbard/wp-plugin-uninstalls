#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_security_master'
wp option delete 'wp_security_master_key'
wp option delete 'wp_security_master_time'
wp option delete 'wp_security_master_time_value'
wp option delete 'wp_security_master_time_unit'
wp option delete 'wp_security_master_activate_state'

