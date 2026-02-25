#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplepayjppayment-live-enabled'
wp option delete 'simplepayjppayment-test-secret-key'
wp option delete 'simplepayjppayment-live-secret-key'
wp option delete 'simplepayjppayment-test-public-key'
wp option delete 'simplepayjppayment-live-public-key'
wp option delete 'simplepayjppayment-encrypt-key'

