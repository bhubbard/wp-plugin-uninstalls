#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emplmasy_activation_time'
wp option delete 'emplmasy_date_format'
wp option delete 'emplmasy_currency_symbol'
wp option delete 'emplmasy_currency_position'
wp option delete 'emplmasy_delete_data_uninstall'

