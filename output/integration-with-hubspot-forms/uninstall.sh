#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embed_hubspot_api_key'
wp option delete 'embed_hubspot_salesforce_support'
wp option delete 'embed_hubspot_cache'

