#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ddf_thanks_page'
wp option delete '_ddf_error_page'
wp option delete '_ddf_paypal_sandbox'
wp option delete '_ddf_paypal_email'
wp option delete '_ddf_pro_api_username'
wp option delete '_ddf_pro_api_password'
wp option delete '_ddf_pro_api_singnature'
wp option delete '_ddf_paypal_standard'
wp option delete '_ddf_paypal_webisite_pro'
wp option delete '_ddf_paypal_payflow'
wp option delete '_ddf_payflow_partner'
wp option delete '_ddf_payflow_vendor'
wp option delete '_ddf_payflow_machantid'
wp option delete '_ddf_payflow_password'
wp option delete '_ddf_default_geteway'
wp option delete '_ddf_default_currency'

