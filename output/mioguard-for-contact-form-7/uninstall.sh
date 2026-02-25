#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mioguardsg_rate_limit'
wp option delete 'mioguardsg_honeypot_field'
wp option delete 'mioguard_show_badge'

