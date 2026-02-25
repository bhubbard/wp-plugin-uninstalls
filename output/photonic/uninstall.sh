#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'photonic_options'
wp option delete 'photonic_authentication'
wp option delete 'photonic_css'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_token' OR option_name LIKE '_site_transient_%_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_photonic_deviantart_refresh_token_%' OR option_name LIKE '_site_transient_photonic_deviantart_refresh_token_%'"

# Clear Cron Jobs
wp cron event delete 'photonic_token_monitor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'photonic_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'photonic_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'photonic_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'photonic_%'"
