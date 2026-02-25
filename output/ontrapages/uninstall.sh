#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opAppID'
wp option delete 'opAPIKey'
wp option delete 'opApiKey'
wp option delete 'opAppSecret'
wp option delete 'opAPIFix'
wp option delete 'opValidCreds'
wp option delete 'opApiSource'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ontrapages_url_%' OR option_name LIKE '_site_transient_ontrapages_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ontrapages_%' OR option_name LIKE '_site_transient_ontrapages_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ontrapage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ontrapage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ontrapage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ontrapage'"
