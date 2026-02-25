#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccpact_db_version'
wp option delete 'ccpact_privacy_api_key_tmp'
wp option delete 'ccpact_privacy_mode'
wp option delete 'ccpact_privacy_domain_tmp'
wp option delete 'ccpact_paranoid_metadata'
wp option delete 'ccpact_sane_metadata'
wp option delete 'ccpact_privacy_api_key'
wp option delete 'ccpact_privacy_domain'
wp option delete 'ccpact_privacy_mode_tmp'

