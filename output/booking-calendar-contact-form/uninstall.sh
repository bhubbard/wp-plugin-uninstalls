#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_JS'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_CSS'"
wp option delete 'CP_BCCF_LOAD_SCRIPTS'
wp option delete 'autoptimize_js_exclude'
wp option delete 'BCCF_RCODE'
wp option delete 'CP_BCCF_JS'
wp option delete 'CP_BCCF_CSS'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

