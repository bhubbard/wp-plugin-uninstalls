#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agilecrm_cf7_domain'
wp option delete 'agilecrm_cf7_admin_email'
wp option delete 'agilecrm_cf7_api_key'
wp option delete 'agilecrm_cf7_form_map'
wp option delete 'agilecrm_cf7_contact_fields'
wp option delete 'agilecrm_cf7_mapped_forms'

