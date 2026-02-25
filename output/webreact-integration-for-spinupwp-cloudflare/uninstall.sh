#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spinupwp_cf_email'
wp option delete 'spinupwp_cf_zone_id'
wp option delete 'spinupwp_cf_api_key'
wp option delete 'spinupwp_cf_api_key_legacy'
wp option delete 'spinupwp_cf_auth_type'
wp option delete 'spinupwp_cf_purge_enabled'

