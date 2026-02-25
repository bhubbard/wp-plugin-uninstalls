#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cc_abandoned_carts_db_version'
wp option delete 'cc_woo_import_connection_established'
wp option delete 'cc_woo_store_information_first_name'
wp option delete 'cc_woo_store_information_last_name'
wp option delete 'cc_woo_store_information_phone_number'
wp option delete 'cc_woo_store_information_store_name'
wp option delete 'cc_woo_store_information_currency'
wp option delete 'cc_woo_store_information_contact_email'
wp option delete 'cc_woo_store_information_alt_login_url'
wp option delete 'constant_contact_for_woo_has_setup'
wp option delete 'cc_woo_customer_data_allow_import'
wp option delete 'cc-woo-is-reviewed'
wp option delete 'cc-woo-review-dismissed-count'
wp option delete 'cc_woo_store_information_checkbox_location'
wp option delete 'cc_abandoned_checkouts_db_version'

# Clear Cron Jobs
wp cron event delete 'cc_woo_check_expired_checkouts'

