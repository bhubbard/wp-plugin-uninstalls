#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fshow_flickr_api_key'
wp option delete 'fshow_default_photosetid'
wp option delete 'fshow_default_width'
wp option delete 'fshow_default_height'
wp option delete 'fshow_gallery_short_url'
wp option delete 'fshow_performance_mode'
wp option delete 'fshow_flickr_cache_time'
wp option delete 'fshow_uniqid'
wp option delete 'fshow_default_username'
wp option delete 'fshow_default_thumburl'

# Delete Transients
wp transient delete 'fshow_users'
wp transient delete 'fshow_photosets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fshow_remote_%' OR option_name LIKE '_site_transient_fshow_remote_%'"

