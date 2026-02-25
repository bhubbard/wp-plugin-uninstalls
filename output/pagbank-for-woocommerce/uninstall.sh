#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagbank_stored_keypair'

# Delete Transients
wp transient delete 'pagbank_oauth_code_verifier'
wp transient delete 'pagbank_oauth_application_id'
wp transient delete 'pagbank_oauth_environment'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pagbank_cached_request_%' OR option_name LIKE '_site_transient_pagbank_cached_request_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagbank_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagbank_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagbank_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagbank_account_id'"
