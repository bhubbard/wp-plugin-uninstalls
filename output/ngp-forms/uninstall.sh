#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ngp_employment_info'
wp option delete 'ngp_api_key'
wp option delete 'ngp_secure_url'
wp option delete 'ngp_support_phone'
wp option delete 'ngp_thanks_url'
wp option delete 'ngp_footer_info'
wp option delete 'ngp_accept_amex'
wp option delete 'ngp_coo_api_key'
wp option delete 'ngp_campaignid'
wp option delete 'ngp_userid'
wp option delete 'ngp_signup_thanks_url'
wp option delete 'ngp_volunteer_thanks_url'

