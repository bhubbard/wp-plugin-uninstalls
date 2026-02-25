#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf2agile__activecollab__org_name'
wp option delete 'cf2agile__activecollab__app_name'
wp option delete 'cf2agile__activecollab__username'
wp option delete 'cf2agile__activecollab__password'
wp option delete 'cf2agile__activecollab__self_url'

