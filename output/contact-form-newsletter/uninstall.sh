#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'si_contact_form_gb'
wp option delete 'sicf_ctct_valid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sicf_ctct_form_%'"
wp option delete 'sicf_ctct'

# Delete Transients
wp transient delete 'sicf_ctct_cc_lists'

