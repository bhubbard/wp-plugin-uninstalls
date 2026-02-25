#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rn_ssp_public_key'
wp option delete 'rn_ssp_secret_key'
wp option delete 'rn_ssp_currency'
wp option delete 'rn_ssp_name'
wp option delete 'rn_ssp_price'
wp option delete 'rn_ssp_success_url'
wp option delete 'rn_ssp_cancel_url'

