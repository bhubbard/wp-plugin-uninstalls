#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's3_secure_url_aws_access_key'
wp option delete 's3_secure_url_aws_secret_key'
wp option delete 's3_secure_url_plugin_version'

