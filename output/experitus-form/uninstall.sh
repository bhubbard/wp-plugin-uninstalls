#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'experitus_request_attributes'
wp option delete 'experitus_connection_data'
wp option delete 'experitus_request_items'
wp option delete 'experitus_captcha_data'
wp option delete 'experitus_ssl_verifypeer'
wp option delete 'experitus_payments_data'
wp option delete 'experitus_options_check'
wp option delete 'experitus_block_dates'
wp option delete 'experitus_countries'

