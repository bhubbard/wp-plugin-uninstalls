#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authorizeipaddress_ip_whitelist'
wp option delete 'authorizeipaddress'

