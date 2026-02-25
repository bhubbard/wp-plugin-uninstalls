#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paack_testing'
wp option delete 'api_token'
wp option delete 'store_id'
wp option delete 'is_store_valid'
wp option delete 'text_popup'
wp option delete 'zip_codes'
wp option delete 'paack_message_zip_code_success'
wp option delete 'paack_message_zip_code_error'

