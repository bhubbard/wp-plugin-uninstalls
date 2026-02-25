#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'visitor_audit_%'"
wp option delete 'visitor_audit_version'

