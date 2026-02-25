#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flavio_token'
wp option delete 'flavio_plan_uuid'
wp option delete 'flavio_api_domain'
wp option delete 'flavio_signature'
wp option delete 'flavio_noindex_filter_enabled'
wp option delete 'flavio_structured_data_home_active'
wp option delete 'flavio_site_domain'

