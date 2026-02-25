#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpavatar_enable_cravatar'
wp option delete 'wpavatar_cdn_type'
wp option delete 'wpavatar_cravatar_route'
wp option delete 'wpavatar_third_party_mirror'
wp option delete 'wpavatar_custom_cdn'
wp option delete 'wpavatar_hash_method'
wp option delete 'wpavatar_timeout'
wp option delete 'wpavatar_enable_cache'
wp option delete 'wpavatar_cache_path'
wp option delete 'wpavatar_cache_expire'
wp option delete 'wpavatar_seo_alt'
wp option delete 'wpavatar_fallback_mode'
wp option delete 'wpavatar_fallback_avatar'
wp option delete 'wpavatar_shortcode_size'
wp option delete 'wpavatar_shortcode_class'
wp option delete 'wpavatar_shortcode_shape'
wp option delete 'wpavatar_commenters_count'
wp option delete 'wpavatar_commenters_size'
wp option delete 'wpavatar_users_count'
wp option delete 'wpavatar_users_size'
wp option delete 'wpavatar_network_enabled'
wp option delete 'wpavatar_network_enforce'
wp option delete 'wpavatar_network_controlled_options'

# Clear Cron Jobs
wp cron event delete 'wpavatar_purge_cache'

