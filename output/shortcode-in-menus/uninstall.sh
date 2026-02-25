#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gs_sim_last_object_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gs_sim_description_hack_%' OR option_name LIKE '_site_transient_gs_sim_description_hack_%'"

