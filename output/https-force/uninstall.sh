#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SitzzForceHttps_redirect_to_secure_site-id'
wp option delete 'SitzzForceHttps_replace_insecure_elements-id'

