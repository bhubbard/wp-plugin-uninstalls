#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_categories_enabled'
wp option delete 'em_cancelled_reactivated'
wp option delete 'dbem_bookings_email_rejected_subject'
wp option delete 'dbem_bookings_email_rejected_body'
wp option delete 'dbem_bookings_currency'
wp option delete 'dbem_data_privacy_consent_text'
wp option delete 'stonehenge_forums'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'em_email_users'
wp option delete 'dbem_mail_sender_name'
wp option delete 'dbem_mail_sender_address'
wp option delete 'dbem_rsvp_mail_send_method'
wp option delete 'dbem_smtp_host'
wp option delete 'dbem_rsvp_mail_port'
wp option delete 'dbem_smtp_username'
wp option delete 'dbem_smtp_password'
wp option delete 'dbem_smtp_encryption'
wp option delete 'dbem_rsvp_mail_SMTPAuth'
wp option delete 'dbem_smtp_autotls'

# Delete Transients
wp transient delete 'stonehenge_creations_plugins_feed'

# Clear Cron Jobs
wp cron event delete 'stonehenge_creations_licenses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_rsvp_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_rsvp_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_rsvp_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_rsvp_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_rsvp_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_rsvp_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_rsvp_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_rsvp_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_id'"
