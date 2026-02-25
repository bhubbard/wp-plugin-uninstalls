#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'styleform'
wp option delete 'diq_rest_key'
wp option delete 'diq_recheck_authorize'
wp option delete 'diq_recheck_fields'
wp option delete 'diq_recheck_subscription_lists'
wp option delete 'diq_add_form_fields'
wp option delete 'diq_add_subscription_lists'
wp option delete 'sc_style'
wp option delete 'sc_redirect_url'
wp option delete 'response_status'
wp option delete 'sc_hide_form'
wp option delete 'diq_date'

