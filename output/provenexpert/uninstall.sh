#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'provenExpertAccount'
wp option delete 'provenexpertUpdateSlugs'
wp option delete 'provenExpertApiId'
wp option delete 'provenExpertApiKey'
wp option delete 'provenExpertApiDisabled'
wp option delete 'provenExpertPluginId'
wp option delete 'provenExpertDebug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'provenExpertDismissed-%'"
wp option delete 'provenExpertVersion'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'provenExpertSeal%'"
wp option delete 'provenExpertSeals'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'provenExpertWidget%'"
wp option delete 'provenExpertWidgets'

