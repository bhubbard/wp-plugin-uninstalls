#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcefr-customers-role'
wp option delete 'wcefr_company_invoice'
wp option delete 'wcefr_private_invoice'
wp option delete 'wcefr_private'
wp option delete 'wcefr_cf_mandatory'
wp option delete 'wcefr_fields_check'
wp option delete 'billing_wcefr_pec_active'
wp option delete 'billing_wcefr_pa_code_active'
wp option delete 'billing_wcefr_piva_active'
wp option delete 'billing_wcefr_cf_active'
wp option delete 'wcefr-suppliers-role'
wp option delete 'wcefr-agt'
wp option delete 'wcefr_only_italy'
wp option delete 'wcefr_cf_only_italy'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active'"
wp option delete 'wcefr-number-series-prefix'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-group'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-role'"

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

