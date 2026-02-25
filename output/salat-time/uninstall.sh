#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mst_time_zone'
wp option delete 'mst_latitude'
wp option delete 'mst_longitude'
wp option delete 'mst_method'
wp option delete 'mst_total_days'
wp option delete 'mst_back_days'
wp option delete 'ccpo_db_version'

