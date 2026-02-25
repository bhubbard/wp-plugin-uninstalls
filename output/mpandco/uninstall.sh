#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Payment_mPandco_accessToken_sandbox'
wp option delete 'Payment_mPandco_accessToken'
wp option delete 'Payment_mPandco_tokenCreateTime_sandbox'
wp option delete 'Payment_mPandco_tokenCreateTime'
wp option delete 'Payment_mPandco_tokenExpiresIn_sandbox'
wp option delete 'Payment_mPandco_tokenExpiresIn'
wp option delete 'Payment_mPandco_tokenType'
wp option delete 'Payment_mPandco_refreshToken_sandbox'
wp option delete 'Payment_mPandco_refreshToken'

