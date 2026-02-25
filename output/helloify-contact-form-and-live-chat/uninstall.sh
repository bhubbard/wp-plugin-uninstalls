#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'web_customer_id'
wp option delete 'web_customer_email'
wp option delete 'web_customer_email_valid'
wp option delete 'first_install_msg'

