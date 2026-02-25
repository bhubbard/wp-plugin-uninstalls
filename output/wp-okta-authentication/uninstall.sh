#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'okta_org_url'
wp option delete 'okta_client_id'
wp option delete 'okta_client_secret'

