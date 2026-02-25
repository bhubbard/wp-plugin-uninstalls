#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ab-wp-security-user-enumeration'
wp option delete 'ab-wp-security-wp-version'
wp option delete 'ab-wp-security-xml-rpc'
wp option delete 'ab-wp-security-dir-browse'

