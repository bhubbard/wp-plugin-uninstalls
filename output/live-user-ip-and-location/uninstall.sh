#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'luipl_anonymize_ip'
wp option delete 'luipl_location_api_key'
wp option delete 'luipl_transient_ttl'

