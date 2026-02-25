#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_icontact_settings'
wp option delete 'gf_icontact_version'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'icgf_lists'
wp transient delete 'icgf_cf'
wp transient delete 'gforms_icontact_version'

