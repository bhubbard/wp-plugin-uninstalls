#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oemm_plugin_options_logger'
wp option delete 'oemm_plugin_options_adminbar'
wp option delete 'oemm_plugin_options_usecdn'
wp option delete 'oemm_plugin_options_nag'
wp option delete 'oemm_consumer_misc_disable_consumer'
wp option delete 'oemm_consumer_misc_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oemm_consumer_rules_block_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oemm_consumer_rules_param_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oemm_consumer_rules_text_%'"
wp option delete 'oemm_consumer_advanced_clickable'
wp option delete 'oemm_consumer_advanced_ttl'
wp option delete 'oemm_consumer_advanced_timeout'
wp option delete 'oemm_consumer_advanced_size'
wp option delete 'oemm_producer_disable_producer'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

