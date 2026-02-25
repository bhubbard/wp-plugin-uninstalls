#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns_shield_hsts'
wp option delete 'ns_shield_security_headers'
wp option delete 'ns_shield_app_passwords'
wp option delete 'ns_shield_default_admin'
wp option delete 'ns_shield_new_admin_login'
wp option delete 'ns_shield_admin_login_change_pending'
wp option delete 'ns_shield_directory_indexing'
wp option delete 'ns_shield_file_editor'
wp option delete 'ns_shield_wp_api_json'
wp option delete 'ns_shield_xml_rpc'
wp option delete 'ns_shield_login_url_enabled'
wp option delete 'ns_shield_w3tc_flushed'
wp option delete 'ns_shield_login_url'
wp option delete 'ns_shield_debug'
wp option delete 'ns_shield_csp_header_light'
wp option delete 'ns_shield_csp_header_hard'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ns_shield_promo_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ns_shield_promo_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ns_shield_promo_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ns_shield_promo_banner_dismissed'"
