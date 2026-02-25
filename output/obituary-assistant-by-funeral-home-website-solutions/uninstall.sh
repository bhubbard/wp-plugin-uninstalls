#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fhw-solutions-obituaries_1'
wp option delete 'fhw-solutions-obituaries_2'
wp option delete 'fhw-solutions-obituaries_3'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_4'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_validation_messages'"
wp option delete 'oa-version'
wp option delete 'oa_api_base'
wp option delete 'fhw_solutions_obituaries_client_info'
wp option delete 'fhw-solutions-elements'
wp option delete 'florist-one-flower-delivery'

