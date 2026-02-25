#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmproecaddon_settings'
wp option delete 'pmproecaddon_plugin_user_enabled'
wp option delete 'pmproecaddon_consumer_key'
wp option delete 'pmproecaddon_consumer_secret'
wp option delete 'pmproecaddon_plugin_list_opt_in_audiences'
wp option delete 'pmproecaddon_require_update_profile'
wp option delete 'pmproecaddon_plugin_list_config'
wp option delete 'pmproecaddon_plugin_list_non_member'
wp option delete 'pmproecaddon_require_unsuscribe_on_level'

