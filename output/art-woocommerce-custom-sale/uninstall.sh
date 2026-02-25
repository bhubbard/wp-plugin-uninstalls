#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awoos_format'
wp option delete 'awoos_custom_label'
wp option delete 'awoos_percent_label'
wp option delete 'awoos_percent_after_before'
wp option delete 'awoos_price_label'
wp option delete 'awoos_price_after_before'

