#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affilizz_api_key'
wp option delete 'affilizz_organization'
wp option delete 'affilizz_media'
wp option delete 'get_api_country_codes'
wp option delete 'affilizz_channel'
wp option delete 'affilizz_javascript_debug_mode'
wp option delete 'affilizz_proxy_uuid'
wp option delete 'affilizz_api_country_code'
wp option delete 'affilizz_javascript_analytics'
wp option delete 'affilizz_plugin_version'
wp option delete 'affilizz_organization_label'
wp option delete 'affilizz_media_label'
wp option delete 'affilizz_channel_label'
wp option delete 'affilizz_rendering_mode'
wp option delete 'affilizz_disable_javascript'
wp option delete 'affilizz_selective_enqueue'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_affilizz_publication_%' OR option_name LIKE '_site_transient_affilizz_publication_%'"
wp transient delete 'affilizz_should_display_install_wizard'
wp transient delete 'affilizz_missing_channel'
wp transient delete 'affilizz_missing_media'

# Clear Cron Jobs
wp cron event delete 'affilizz_hourly_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affilizz_publication_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affilizz_publication_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affilizz_publication_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affilizz_publication_id'"
