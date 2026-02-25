#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_custom_emails_debug_enabled'
wp option delete 'alg_wc_custom_emails_delete_plugin_data'
wp option delete 'alg_wc_custom_emails_base_dir'
wp option delete 'alg_wc_custom_emails_custom_triggers'
wp option delete 'alg_wc_custom_emails_version'
wp option delete 'alg_wc_custom_emails_wpautop'
wp option delete 'alg_wc_custom_emails_scheduler'
wp option delete 'alg_wc_custom_emails_titles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'alg_wc_custom_emails_enabled_trigger_groups'
wp option delete 'woocommerce_email_footer_text'

