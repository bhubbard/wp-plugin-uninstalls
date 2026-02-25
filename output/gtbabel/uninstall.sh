#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gtbabel_url_settings'
wp option delete 'gtbabel_plugin_version'
wp option delete 'gtbabel_license_key'

# Delete Transients
wp transient delete 'gtbabel_public_urls'
wp transient delete 'gtbabel_auto_grab_sitemap_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gtbabel_alt_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gtbabel_alt_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gtbabel_alt_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gtbabel_alt_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gtbabel_prevent_lngs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gtbabel_prevent_lngs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gtbabel_prevent_lngs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gtbabel_prevent_lngs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gtbabel__email_notifications_discovered_last_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gtbabel__email_notifications_discovered_last_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gtbabel__email_notifications_discovered_last_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gtbabel__email_notifications_discovered_last_time'"
