#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tornevall_dnsbl_cache_age'
wp option delete 'tornevall_dnsbl_filter_types'
wp option delete 'tornevall_dnsbl_nocomment'
wp option delete 'tornevall_dnsbl_blockfull'
wp option delete 'tornevall_dnsbl_delisting_page'
wp option delete 'tornevall_dnsbl_update_timestamp'
wp option delete 'tornevall_dnsbl_resolver_hosts'
wp option delete 'tornevall_dnsbl_form_noajax'
wp option delete 'tornevall_dnsbl_blocked_redirecturl'
wp option delete 'tornevall_dnsbl_prefer_api'
wp option delete 'tornevall_dnsbl_getlisted_resolver'
wp option delete 'tornevall_dnsbl_comments_disabled_style'
wp option delete 'tornevall_dnsbl_delistingpage_comments_disabled'
wp option delete 'tornevall_dnsbl_wpcf7'
wp option delete 'tornevall_dnsbl_preferred_api_url'
wp option delete 'tornevall_dnsbl_api_id'
wp option delete 'tornevall_dnsbl_api_key'
wp option delete 'tornevall_dnsbl_fraudbl_resursbank_woocommerce'
wp option delete 'tornevall_dnsbl_current_flags'
wp option delete 'tornevall_dnsbl_clientdata'
wp option delete 'tornevall_dnsbl_database_version'

