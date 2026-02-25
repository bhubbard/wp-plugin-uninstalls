#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awesoft_ip_whitelist_enabled'
wp option delete 'awesoft_ip_whitelist_list'

