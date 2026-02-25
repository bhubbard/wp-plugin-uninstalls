#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aau_ahcm_last_object_id'
wp option delete 'woocommerce_permalinks'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aau_ahcm_description_hack_%' OR option_name LIKE '_site_transient_aau_ahcm_description_hack_%'"

