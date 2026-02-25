#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shieldon_%'"
wp option delete 'wpso_last_reset_time'
wp option delete 'shieldon_authetication'
wp option delete 'shieldon_xss_protected_type'
wp option delete 'shieldon_xss_protected_list'
wp option delete 'wpso_driver_reset'
wp option delete 'wpso_version'
wp option delete 'shieldon_component'
wp option delete 'shieldon_xss_protection'
wp option delete 'wpso_driver_hash'
wp option delete 'wpso_lang_code'
wp option delete 'wpso_channel_id'

