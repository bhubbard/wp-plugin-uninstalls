#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vlss_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vlss_api_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vlss_otp_%'"
wp option delete 'vlss_tokenizer_verified'
wp option delete 'vlss_tokenizer_registered'
wp option delete 'vlss_tokenizer_client_id'
wp option delete 'vlss_tokenizer_api_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vlss_otp_%' OR option_name LIKE '_site_transient_vlss_otp_%'"

