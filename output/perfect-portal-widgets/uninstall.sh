#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'perfect_portal_company_guid'
wp option delete 'perfect_portal_region'
wp option delete 'perfect_portal_quote_calc_intake_type'
wp option delete 'perfect_portal_quote_calc_intake_guid'
wp option delete 'perfect_portal_version'

