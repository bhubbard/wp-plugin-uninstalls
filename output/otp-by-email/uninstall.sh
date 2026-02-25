#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otp-by-email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otp_on_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otp_on_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otp_on_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otp_on_success'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otp_on_failure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otp_on_failure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otp_on_failure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otp_on_failure'"
