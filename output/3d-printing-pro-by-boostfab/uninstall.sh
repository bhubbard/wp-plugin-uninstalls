#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boostfab_api_token'
wp option delete 'boostfab_organization_slug'
wp option delete 'boostfab_cookie_policy'
wp option delete 'boostfab_primary_color'
wp option delete 'boostfab_sample_quotation_page_created'

