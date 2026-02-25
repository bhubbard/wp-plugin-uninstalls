#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'l2it_org_id'
wp option delete 'l2it_integration_id'
wp option delete 'l2it_api_key'
wp option delete 'l2it_has_paywall'

