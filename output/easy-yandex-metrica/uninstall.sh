#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abwp_eym_plugin_version'
wp option delete 'abwp_eym_token'
wp option delete 'abwp_eym_counter_id'

