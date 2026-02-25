#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_id'
wp option delete 'extra_search_fields'
wp option delete 'sort_fields'
wp option delete 'planyo_language'
wp option delete 'default_mode'
wp option delete 'seo_friendly'
wp option delete 'use_login'
wp option delete 'login_integration_code'
wp option delete 'resource_ordering'
wp option delete 'js_framework'

