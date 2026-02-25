#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooProof_api_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'social_proof_stale_cache_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_social_proof_fallback_%' OR option_name LIKE '_site_transient_social_proof_fallback_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_social_proof_api_%' OR option_name LIKE '_site_transient_social_proof_api_%'"
wp transient delete 'social_proof_wc_admin_notices'

