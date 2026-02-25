#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wploginsecurity2_ip_whitelist'
wp option delete 'wploginsecurity2'

