#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ntmrr_blacklisted_emails'
wp option delete 'ntmrr_whitelisted_emails'
wp option delete 'ntmrr_email_not_approved_message'
wp option delete 'ntmrr_redirect_on_unapproved'
wp option delete 'ntmrr_redirect_on_unapproved_url'
wp option delete 'ntmrr_registration_form_message'

