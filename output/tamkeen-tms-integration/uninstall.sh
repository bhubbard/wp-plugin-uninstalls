#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tamkeen_tenant_id'
wp option delete 'tamkeen_grid_items_per_row'
wp option delete 'tamkeen_api_key'
wp option delete 'tamkeen_locale'

