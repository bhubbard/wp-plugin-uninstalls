#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mbwp_heartbeat'
wp option delete 'mbwp_shortlink'
wp option delete 'mbwp_pingback'
wp option delete 'mbwp_xml_rpc'
wp option delete 'mbwp_remove_qurey_string'
wp option delete 'mbwp_hide_wp'
wp option delete 'mbwp_dns_prefetch'
wp option delete 'mbwp_contact_form'
wp option delete 'mbwp_mbeds'
wp option delete 'mbwp_WLManifest'
wp option delete 'mbwp_Remove_JQuery'
wp option delete 'mbwp_dashicons'
wp option delete 'mbwp_remove_url_comment'
wp option delete 'mbwp_disable_acf'
wp option delete 'mbwp_search'
wp option delete 'mbwp_preload_fonts'

