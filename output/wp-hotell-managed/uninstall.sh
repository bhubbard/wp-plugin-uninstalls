#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wphm_options'
wp option delete 'wphm_blacklisted_ips'

