#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dnsm4cf_api_token'
wp option delete 'dnsm4cf_zone_id'
wp option delete 'dnsm4cf_domain_name'

