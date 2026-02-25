#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customer_statistics_roles'
wp option delete 'customer_statistics_detailed_view'

