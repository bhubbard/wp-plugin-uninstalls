#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lana_sso_client_id'
wp option delete 'lana_sso_client_secret'
wp option delete 'lana_sso_authorize_url'
wp option delete 'lana_sso_token_url'
wp option delete 'lana_sso_resource_url'

