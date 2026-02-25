#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sd_stripe_private_key'
wp option delete 'sd_stripe_public_key'

