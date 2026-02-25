#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lenochat_status'
wp option delete 'lenochat_license'
wp option delete 'lenochat_language'
wp option delete 'lenochat_company_id'

