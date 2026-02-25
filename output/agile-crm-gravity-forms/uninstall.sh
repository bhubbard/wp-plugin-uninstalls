#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agilecrm_gf_domain'
wp option delete 'agilecrm_gf_admin_email'
wp option delete 'agilecrm_gf_api_key'
wp option delete 'agilecrm_gf_form_map'
wp option delete 'agilecrm_gf_contact_fields'
wp option delete 'agilecrm_gf_mapped_forms'

