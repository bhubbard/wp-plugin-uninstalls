#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpis_affiliate_royale_active'
wp option delete 'cpis_options'
wp option delete 'cpis_friendly_url'
wp option delete 'cpis_layout'
wp option delete 'cpis_safe_download'
wp option delete 'cpis_prevent_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'cpis_has_been_configured'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cpis_penalized_ip_%' OR option_name LIKE '_site_transient_cpis_penalized_ip_%'"

