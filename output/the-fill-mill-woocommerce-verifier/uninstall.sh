#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tfm_api_key'
wp option delete 'tfm_company_name'
wp option delete 'tfm_company_id'

