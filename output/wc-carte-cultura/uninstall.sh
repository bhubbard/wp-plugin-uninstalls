#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wccc-sandbox'
wp option delete 'wccc-cert-activation'
wp option delete 'wccc-password'
wp option delete 'wccc-categories'
wp option delete 'wccc-image'

