#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fastly-schema-version'
wp option delete 'fastly-settings-general'
wp option delete 'fastly-settings-advanced'
wp option delete 'fastly-settings-io'
wp option delete 'fastly-settings-webhooks'
wp option delete 'fastly_api_hostname'
wp option delete 'fastly_api_key'
wp option delete 'fastly_service_id'
wp option delete 'fastly_log_purges'
wp option delete 'fastly_vcl_version'

