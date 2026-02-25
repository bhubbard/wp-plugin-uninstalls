#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'muap_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'muap_id_cap_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'access_to_other_roles_%'"
wp option delete 'muap_id_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'muap_id_url_%'"

