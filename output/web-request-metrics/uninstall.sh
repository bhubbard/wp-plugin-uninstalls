#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metrics_auth_username'
wp option delete 'metrics_auth_password'
wp option delete 'metrics_site'
wp option delete 'metrics_variant'
wp option delete 'metrics_uris_to_check'
wp option delete 'metrics_auth_site'
wp option delete 'metrics_auth_variant'

