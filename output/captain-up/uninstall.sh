#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'captain-api-key'
wp option delete 'captain-first-install'
wp option delete 'captain-locale'
wp option delete 'captain-disabled-paths'
wp option delete 'captain-enabled-paths'
wp option delete 'captain-show-paths-type'
wp option delete 'captain-hide-on-homepage-checkbox'
wp option delete 'captain-api-secret'
wp option delete 'captain-client-token'
wp option delete 'captain-user-integration-checkbox'

