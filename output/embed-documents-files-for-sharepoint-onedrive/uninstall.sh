#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esodwpi_client_id'
wp option delete 'esodwpi_client_secret'
wp option delete 'esodwpi_tenant_id'
wp option delete 'esodwpi_redirect_uri'
wp option delete 'esodwpi_access_token'
wp option delete 'esodwpi_code'
wp option delete 'esodwpi_refresh_token'

