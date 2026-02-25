#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_chimp_lists_init'
wp option delete 'wp_chimp_lists_db_upgraded'
wp option delete 'wp_chimp_lists_total_items'
wp option delete 'wp_chimp_api_key_status'
wp option delete 'wp_chimp_lists_db_version'
wp option delete 'wp_chimp_settings_mailchimp'
wp option delete 'wp_chimp_default_list'
wp option delete 'wp_chimp_settings_advanced_lists'

