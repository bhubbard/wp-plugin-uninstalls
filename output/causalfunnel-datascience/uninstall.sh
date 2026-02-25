#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'causalfunnel_enable_analytics'
wp option delete 'causalfunnel_enable_data_collection'
wp option delete 'causalfunnel_consent_version'
wp option delete 'causalfunnel_consent_date'

