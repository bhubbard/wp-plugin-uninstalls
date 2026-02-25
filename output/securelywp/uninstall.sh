#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'securelywp_hardening_options'
wp option delete 'securelywp_headers_options'
wp option delete 'securelywp_2fa_options'
wp option delete 'securelywp_firewall_options'
wp option delete 'securelywp_blocked_requests'
wp option delete 'securelywp_options'

# Delete Transients
wp transient delete 'securelywp_cache_purged'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_securelywp_email_2fa_code_%' OR option_name LIKE '_site_transient_securelywp_email_2fa_code_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_securelywp_2fa_user_%' OR option_name LIKE '_site_transient_securelywp_2fa_user_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'securelywp_2fa_user_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'securelywp_2fa_user_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'securelywp_2fa_user_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'securelywp_2fa_user_options'"
