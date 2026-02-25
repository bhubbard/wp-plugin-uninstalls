#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gravity_forms_cc_valid_api'
wp option delete 'gravityforms_cc_migrated'
wp option delete 'gf_constantcontact_settings'
wp option delete 'gf_constantcontact_migrated'
wp option delete 'gf_constantcontact_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gf_ctct_lists_%' OR option_name LIKE '_site_transient_gf_ctct_lists_%'"
wp transient delete 'gravity_forms_cc_valid_api'

