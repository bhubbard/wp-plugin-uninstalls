#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'es_config_contactform7_active_%'"
wp option delete 'es_config_apikey'
wp option delete 'es_config_lang'

