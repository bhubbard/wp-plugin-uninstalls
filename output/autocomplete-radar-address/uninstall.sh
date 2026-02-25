#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autordr_radautordr_api_key'
wp option delete 'autordr_frontend_field_ids'
wp option delete 'autordr_backend_field_ids'

