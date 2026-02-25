#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'livevisi_excluded_ips'
wp option delete 'livevisi_settings'
wp option delete 'livevisi_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_livevisi_geo_%' OR option_name LIKE '_site_transient_livevisi_geo_%'"

