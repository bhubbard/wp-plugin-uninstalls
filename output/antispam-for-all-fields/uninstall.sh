#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_antispam_for_all_fields_statskilled'
wp option delete 'plugin_antispam_for_all_fields_statsspammed'
wp option delete 'plugin_antispam_for_all_fields_installed'
wp option delete 'plugin_antispam_for_all_fields_settings'
wp option delete 'plugin_antispam_for_all_fields_version'
wp option delete 'antispamextra_disallow_nonreferers'

# Delete Transients
wp transient delete 'plugin_afaf_nonce1'

