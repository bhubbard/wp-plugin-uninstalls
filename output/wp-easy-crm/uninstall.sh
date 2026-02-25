#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clients_db_version'
wp option delete 'wp-easy-crm-settings'
wp option delete 'eacr_recaptcha_site_key'
wp option delete 'eacr_recaptcha_secret_key'
wp option delete 'eacr_enable_region_in_contact_form'
wp option delete 'eacr_exclude_general_region'
wp option delete 'default_post_edit_rows'

# Clear Cron Jobs
wp cron event delete 'eacr_send_email_reminder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'region_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'region_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'region_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'region_%'"
