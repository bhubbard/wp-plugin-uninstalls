#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paytm_merchant_id'
wp option delete 'paytm_donation_details_url'
wp option delete 'paytm_enable_address'
wp option delete 'paytm_user_field'
wp option delete 'isWebsiteAddedDonation'
wp option delete 'paytm_website'
wp option delete 'websiteOptionDonation'
wp option delete 'paytm_payment_environment'
wp option delete 'paytm_content'
wp option delete 'paytm_websiteOther'
wp option delete 'paytm_merchant_key'

