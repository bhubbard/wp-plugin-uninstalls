#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'axesweb_activated'
wp option delete 'axesweb_verify_issued_at'
wp option delete 'axesweb_verify_ttl'
wp option delete 'axesweb_key_last4'
wp option delete 'axesweb_api_key_enc'
wp option delete 'axesweb_a11y_api_key'
wp option delete 'axesweb_a11y_account_first_name'
wp option delete 'axesweb_a11y_account_last_name'
wp option delete 'axesweb_a11y_declaration_page_id'
wp option delete 'axesweb_a11y_feedback_enabled'
wp option delete 'axesweb_a11y_feedback_email'
wp option delete 'axesweb_a11y_widget_position'
wp option delete 'axesweb_a11y_widget_theme'
wp option delete 'axesweb_a11y_declaration_url'

