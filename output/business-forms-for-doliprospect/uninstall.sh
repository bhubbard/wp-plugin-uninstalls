#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'business_forms_doliprospect_dolibarr_url'
wp option delete 'business_forms_doliprospect_api_key'
wp option delete 'business_forms_doliprospect_version'
wp option delete 'business_forms_doliprospect_default_status'
wp option delete 'business_forms_doliprospect_notification_email'
wp option delete 'business_forms_doliprospect_default_deal_status'

