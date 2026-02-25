#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'petje_af_client_id'
wp option delete 'petje_af_client_secret'
wp option delete 'petje_af_page_id'
wp option delete 'petje_af_site_protection_plan'
wp option delete 'petje_af_ignore_access_settings_for_admin'
wp option delete 'petje_af_account_page'
wp option delete 'petje_af_access_denied_page'
wp option delete 'petje_af_redirect_uri_page'
wp option delete 'petjeaf_connection_failed'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%refresh_token' OR option_name LIKE '_site_transient_%refresh_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_petje_af_state_%' OR option_name LIKE '_site_transient_petje_af_state_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'petje_af_page_plan_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'petje_af_page_plan_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'petje_af_page_plan_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'petje_af_page_plan_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'petjeaf_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'petjeaf_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'petjeaf_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'petjeaf_user_id'"
