#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pssec_ignore_whitelist'
wp option delete 'pssec_ignore_blacklist'
wp option delete 'pssec_ignore_high_requests'
wp option delete 'pssec_country_whitelist'
wp option delete 'pssec_api_key'
wp option delete 'pssec_user_id'
wp option delete 'pssec_host'
wp option delete 'pssec_high_request_count'
wp option delete 'pssec_countries_whitelisted'
wp option delete 'ssec_ignore_blacklist'

