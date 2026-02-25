#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'juiz_SPS_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-skin-shop-markup' OR option_name LIKE '_site_transient_%-skin-shop-markup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-changelog' OR option_name LIKE '_site_transient_%-changelog'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jsps_metabox_hide_buttons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jsps_metabox_hide_buttons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jsps_metabox_hide_buttons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jsps_metabox_hide_buttons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jsps_email_shares'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jsps_email_shares'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jsps_email_shares'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jsps_email_shares'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jsps_counters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jsps_counters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jsps_counters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jsps_counters'"
