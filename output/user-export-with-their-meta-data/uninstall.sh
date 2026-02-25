#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uewm_columns'
wp option delete 'uewm_use_custom_csv_settings'
wp option delete 'uewm_field_separator'
wp option delete 'uewm_text_qualifier'
wp option delete 'uewm_custom_field_separator'
wp option delete 'uewm_custom_text_qualifier'
wp option delete 'uewm_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_queue_flush_rewrite_rules'"

