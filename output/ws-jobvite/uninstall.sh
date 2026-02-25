#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jobvite_api_key'
wp option delete 'jobvite_secret_key'
wp option delete 'jobvite_company_id'

