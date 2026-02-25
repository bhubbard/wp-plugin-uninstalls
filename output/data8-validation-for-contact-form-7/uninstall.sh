#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'd8cf7_client_api_key'
wp option delete 'd8cf7_predictiveaddress_options'
wp option delete 'd8cf7_predictiveaddress'
wp option delete 'd8cf7_telephone_validation'
wp option delete 'd8cf7_telephone_default_country'
wp option delete 'd8cf7_telephone_allowed_prefixes'
wp option delete 'd8cf7_telephone_barred_prefixes'
wp option delete 'd8cf7_telephone_required_country'
wp option delete 'd8cf7_ajax_key'
wp option delete 'd8cf7_telephone_advanced_options'
wp option delete 'd8cf7_email_validation_level'
wp option delete 'd8cf7_salaciousName'
wp option delete 'd8cf7_bank_validation'
wp option delete 'd8cf7_error'
wp option delete 'd8cf7_password'

