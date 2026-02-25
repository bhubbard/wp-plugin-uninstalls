#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mc4wp_flash_messages'
wp option delete 'mc4wp'
wp option delete 'mc4wp_lite_version'
wp option delete 'mc4wp_version'
wp option delete 'mc4wp_lite_form'
wp option delete 'mc4wp_default_form_id'
wp option delete 'mc4wp_form'
wp option delete 'mc4wp_form_stylesheets'
wp option delete 'mc4wp_lite'
wp option delete 'mc4wp_lite_checkbox'
wp option delete 'mc4wp_checkbox'
wp option delete 'mc4wp_integrations'
wp option delete 'mc4wp_custom_css_file'
wp option delete 'sidebars_widgets'
wp option delete 'widget_mc4wp_widget'
wp option delete 'widget_mc4wp_form_widget'
wp option delete 'mc4wp_groupings_map'
wp option delete 'mc4wp_mailchimp_lists_v3_fallback'

# Delete Transients
wp transient delete 'mc4wp_mailchimp_lists'
wp transient delete 'mc4wp_api_key_notice_dismissed'
wp transient delete 'mc4wp_mailchimp_lists_fallback'
wp transient delete 'mc4wp_mailchimp_lists_v3'
wp transient delete 'mc4wp_error_email_sent'

# Clear Cron Jobs
wp cron event delete 'mc4wp_refresh_mailchimp_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc4wp_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc4wp_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc4wp_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc4wp_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'text_%'"
