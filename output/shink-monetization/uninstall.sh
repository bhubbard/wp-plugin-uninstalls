#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shink_plugins_option_enabled'
wp option delete 'shink_plugins_option_id'
wp option delete 'shink_plugins_option_domain'
wp option delete 'shink_plugins_option_website_entry_enabled'
wp option delete 'shink_plugins_option_include_exclude_domains_choose'
wp option delete 'shink_plugins_option_include_exclude_domains_value'
wp option delete 'shink_plugins_option_exclude_roles'

