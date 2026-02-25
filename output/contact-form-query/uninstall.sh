#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stcfq_redirect_to_settings'
wp option delete 'stcfq_form_fields'
wp option delete 'stcfq_consent_field'
wp option delete 'stcfq_submit_button'
wp option delete 'stcfq_feedback_messages'
wp option delete 'stcfq_layout'
wp option delete 'stcfq_design'
wp option delete 'stcfq_captcha'
wp option delete 'stcfq_google_recaptcha_v2'
wp option delete 'stcfq_cf_turnstile'
wp option delete 'stcfq_block_keywords'
wp option delete 'stcfq_email_carrier'
wp option delete 'stcfq_wp_mail'
wp option delete 'stcfq_smtp'
wp option delete 'stcfq_email_to_admin'
wp option delete 'stcfq_delete_data_enable'

# Delete Transients
wp transient delete 'stcfq_unanswered_messages_count'

