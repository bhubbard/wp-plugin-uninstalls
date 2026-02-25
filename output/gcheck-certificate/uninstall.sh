#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gcheck_version'
wp option delete 'gcheck_current_security_code'
wp option delete 'gcheck_show_detailed_instructions'

