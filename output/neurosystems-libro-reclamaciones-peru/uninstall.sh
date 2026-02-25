#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'NEURLRP_from_name'
wp option delete 'neurlrp_from_name'
wp option delete 'neurlrp_from_email'
wp option delete 'neurlrp_admin_email'
wp option delete 'neurlrp_cc_email'
wp option delete 'neurlrp_bcc_email'
wp option delete 'NEURLRP_from_email'

