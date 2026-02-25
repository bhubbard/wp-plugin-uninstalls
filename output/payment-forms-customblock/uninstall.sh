#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stripe_forms_gutenberg_api_secret'
wp option delete 'stripe_forms_gutenberg_api_public'

