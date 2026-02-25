#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uncertifyai_settings'

# Delete Transients
wp transient delete 'uncertifyai_user_data'
wp transient delete 'uncertifyai_usage_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_uncertifyai_recheck_result_%' OR option_name LIKE '_site_transient_uncertifyai_recheck_result_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uncertifyai_ai_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uncertifyai_ai_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uncertifyai_ai_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uncertifyai_ai_check'"
