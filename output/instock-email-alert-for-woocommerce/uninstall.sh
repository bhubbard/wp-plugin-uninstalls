#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'instock_email_option_css'
wp option delete 'instock_email_alert_db_version'
wp option delete 'instock_email_option_sender'
wp option delete 'instock_email_option_from'
wp option delete 'instock_email_option_subject'
wp option delete 'instock_email_option_message'
wp option delete 'instock_email_option_error'
wp option delete 'instock_email_option_success'
wp option delete 'instock_email_option_placeholder'
wp option delete 'instock_email_option_submit'
wp option delete 'instock_email_option_shortcode'

