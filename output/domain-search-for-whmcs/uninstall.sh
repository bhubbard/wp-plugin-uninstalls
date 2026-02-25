#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'domain_search_for_whmcs_url'
wp option delete 'domain_search_for_whmcs_placeholder'
wp option delete 'domain_search_for_whmcs_shortcodes'
wp option delete 'whmcs_domain_search_url'
wp option delete 'whmcs_domain_search_placeholder'
wp option delete 'whmcs_domain_search_custom_css'

