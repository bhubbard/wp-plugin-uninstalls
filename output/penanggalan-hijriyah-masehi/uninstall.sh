#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PHM_hijrday'
wp option delete 'PHM_hijrmonth'
wp option delete 'PHM_masehiday'
wp option delete 'PHM_masehimonth'
wp option delete 'PHM_style'
wp option delete 'PHM_adjust'
wp option delete 'PHM_separator'

