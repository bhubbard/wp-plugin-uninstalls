#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp option delete 'widget_onepage_featured-widget'
wp option delete 'widget_onepage_buttons-widget'
wp option delete 'widget_onepage_features-widget'
wp option delete 'widget_onepage_counter-widget'
wp option delete 'widget_onepage_services-widget'
wp option delete 'widget_mts_widget_recent_tweets'
wp option delete 'widget_onepage_testimonials-widget'
wp option delete 'widget_onepage_clients-widget'
wp option delete 'widget_onepage_blog-widget'
wp option delete 'mts_customizer_flag'
wp option delete 'mts_twitter_plugin_last_cache_time'
wp option delete 'mts_twitter_plugin_tweets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
