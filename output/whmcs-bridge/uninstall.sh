#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cc_whmcs_bridge_version'
wp option delete 'cc_whmcs_bridge_footer'
wp option delete 'cc_whmcs_bridge_sso_cache'
wp option delete 'cc_whmcs_bridge_url'
wp option delete 'cc_whmcs_bridge_pages'
wp option delete 'cc_whmcs_bridge_log'
wp option delete 'cc_whmcs_bridge_page'
wp option delete 'cc_whmcs_bridge_ftp_user'
wp option delete 'cc_whmcs_bridge_ftp_password'
wp option delete 'cc-ce-bridge-cp-support-us'
wp option delete 'cc_whmcs_bridge_template'
wp option delete 'cc_whmcs_bridge_css'
wp option delete 'cc_whmcs_bridge_sso_js'
wp option delete 'cc_whmcs_bridge_jquery'
wp option delete 'cc_whmcs_bridge_debug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cc_whmcs_bridge_cache%'"
wp option delete 'cc_whmcs_bridge_sso_active'
wp option delete 'cc_whmcs_bridge_sso_local_key'
wp option delete 'cc_whmcs_bridge_prefix'
wp option delete 'cc_whmcs_bridge_sso_force_ssl'
wp option delete 'cc_whmcs_bridge_sso_titles'
wp option delete 'cc_whmcs_bridge_permalinks'
wp option delete 'cc_whmcs_bridge_custom_rules'
wp option delete 'cc_whmcs_bridge_invoicestyle'
wp option delete 'cc_whmcs_bridge_style'
wp option delete 'cc_whmcs_bridge_affiliate_id'
wp option delete 'cc_whmcs_bridge_sso_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_whmcs_bridge_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_whmcs_bridge_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_whmcs_bridge_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_whmcs_bridge_page'"
