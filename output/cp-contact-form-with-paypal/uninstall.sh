#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_JS'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_CSS'"
wp option delete 'CP_CFPP_LOAD_SCRIPTS'
wp option delete 'autoptimize_js_exclude'
wp option delete 'CP_CFWPP_CSS'
wp option delete 'CP_CFWPP_JS'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cpeople-captcha-%' OR option_name LIKE '_site_transient_cpeople-captcha-%'"

