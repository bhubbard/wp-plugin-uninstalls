#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'analytics-integrator-google-analytics-id'
wp option delete 'analytics-integrator-fullstory-id'
wp option delete 'analytics-integrator-hotjar-id'
wp option delete 'analytics-integrator-mouseflow-id'
wp option delete 'analytics-integrator-smartlook-id'

