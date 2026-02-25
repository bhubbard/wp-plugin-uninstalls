#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aws-region'
wp option delete 'aws-account-id'
wp option delete 'aws-secret-key'
wp option delete 'gp-source-language'

