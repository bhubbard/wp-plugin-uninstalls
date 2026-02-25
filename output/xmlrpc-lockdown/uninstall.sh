#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xmlrpcld_allowed_plugins'
wp option delete 'xmlrpcld_custom_allowances'

