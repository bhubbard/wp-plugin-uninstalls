#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ticlabsaich-opt-openai-api-key'
wp option delete 'ticlabsaich-opt-openai-api-model'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-img-api-key'"
wp option delete 'ticlabsaich-opt-openai-model'
wp option delete 'ticlabsaich_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-text-api-key'"

