#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'deliveryplus_distance_apikey'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_deliveryplus_distance_request_%' OR option_name LIKE '_site_transient_deliveryplus_distance_request_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deliveryplus_gf_entry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deliveryplus_gf_entry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deliveryplus_gf_entry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deliveryplus_gf_entry'"
