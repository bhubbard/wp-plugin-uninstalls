#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'vargal_params'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exmage_external_oembed_src'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exmage_external_oembed_src'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exmage_external_oembed_src'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exmage_external_oembed_src'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exmage_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
