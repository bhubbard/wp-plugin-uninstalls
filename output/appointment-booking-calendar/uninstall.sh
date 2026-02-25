#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CPABC_APPOINTMENTS_LOAD_SCRIPTS'
wp option delete 'CPABC_PCODE'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_JS'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_CSS'"
wp option delete 'CPABC_APPOINTMENTS_DEFAULT_USE_EDITOR'
wp option delete 'CPABC_CAL_TIME_ZONE_MODIFY_SET'
wp option delete 'CPABC_CAL_TIME_SLOT_SIZE_SET'
wp option delete 'CPABC_EXCLUDED_COLUMNS'
wp option delete 'ABC_RCODE'
wp option delete 'ABC_ONE_TIME_4UPDATE'
wp option delete 'CP_ABC_JS'
wp option delete 'CP_ABC_CSS'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cpeople-captcha-%' OR option_name LIKE '_site_transient_cpeople-captcha-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

