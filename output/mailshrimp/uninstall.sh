#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailchimp-current-campaign'
wp option delete 'mailchimp-current-template'
wp option delete 'mailshrimp_google_analytics'
wp option delete 'mailchimp-api-key'

