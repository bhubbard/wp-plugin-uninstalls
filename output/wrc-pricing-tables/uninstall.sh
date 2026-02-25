#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'packageTables'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feature'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_option'"
wp option delete 'wrcpt_spare_me'
wp option delete 'wrcpt_activation_time'
wp option delete 'packageCount'
wp option delete 'packageIDs'
wp option delete 'IDsCount'
wp option delete 'external_updates-wrc-pricing-tables'

