#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_blob'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_array'"
wp option delete 'GOTMLS_settings_array'
wp option delete 'GOTMLS_definitions_array'
wp option delete 'GOTMLS_get_URL_blob'
wp option delete 'GOTMLS_definitions_blob'
wp option delete 'GOTMLS_nonce_blob'
wp option delete 'GOTMLS_Installation_Keys'
wp option delete 'WP_firewall_exclude_terms'
wp option delete 'WP_firewall_whitelisted_ip'
wp option delete 'GOTMLS_get_URL_array'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'GOTMLS_threats_found'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'GOTMLS_threats_found'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'GOTMLS_threats_found'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'GOTMLS_threats_found'"
