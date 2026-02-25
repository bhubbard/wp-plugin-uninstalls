#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'website_id'
wp option delete 'crisp_onboarding'
wp option delete 'website_verify'

