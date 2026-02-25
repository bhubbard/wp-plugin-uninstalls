#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_rsvp_mail_send_method'
wp option delete 'em_attendee_fields_enabled'
wp option delete 'dbem_mail_sender_name'
wp option delete 'dbem_mail_sender_address'
wp option delete 'dbem_smtp_host'
wp option delete 'dbem_rsvp_mail_port'
wp option delete 'dbem_smtp_username'
wp option delete 'dbem_smtp_password'
wp option delete 'dbem_smtp_html'
wp option delete 'dbem_smtp_html_br'
wp option delete 'dbem_rsvp_mail_SMTPAuth'
wp option delete 'dbem_bookings_double'
wp option delete 'dbem_bookings_currency'
wp option delete 'dbem_data_privacy_consent_text'
wp option delete 'stonehenge_forums'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'em_email_users'
wp option delete 'dbem_smtp_encryption'
wp option delete 'dbem_smtp_autotls'

# Delete Transients
wp transient delete 'stonehenge_creations_plugins_feed'

# Clear Cron Jobs
wp cron event delete 'stonehenge_creations_licenses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_attendee_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_attendee_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_attendee_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_attendee_form'"
