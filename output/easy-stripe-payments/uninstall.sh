#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'espd_email_notification'
wp option delete 'espd_email_subject'
wp option delete 'espd_email_sender_mail'
wp option delete 'espd_email_mail_content'
wp option delete 'espd_stripe_public_key'
wp option delete 'espad_stripe_metadata_campaign'
wp option delete 'espad_stripe_metadata_project'
wp option delete 'espad_stripe_metadata_product'
wp option delete 'espad_currency'
wp option delete 'espad_checkout_form_id'
wp option delete 'espd_stripe_secret_key'
wp option delete 'espd_membership_last_check'
wp option delete 'espd_membership_status'
wp option delete 'espd_welcome_page_visited'

