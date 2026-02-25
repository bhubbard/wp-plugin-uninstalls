#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_admins'
wp option delete 'helpdesk_subject'
wp option delete 'helpdesk_admin-notifacation'
wp option delete 'helpdesk_new_ticket_message'
wp option delete 'helpdesk_ticket-submission-message'
wp option delete 'helpdesk_submission-conformation'
wp option delete 'helpdesk_open-close'
wp option delete 'helpdesk_response_message'
wp option delete 'helpdesk_ticket-update-message'
wp option delete 'helpdesk_message-order'
wp option delete 'helpdesk_email-subject'
wp option delete 'helpdesk_version'

