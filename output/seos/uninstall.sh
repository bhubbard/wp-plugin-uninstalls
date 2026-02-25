#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seos_canonical'
wp option delete 'seos_keywords'
wp option delete 'seos_description'
wp option delete 'seos_google_verification'
wp option delete 'google_analytics'
wp option delete 'seos_yandex_verification'
wp option delete 'seos_bing_verification'
wp option delete 'seos_site_name'
wp option delete 'seos_facebook_image'
wp option delete 'seos_facebook_title'
wp option delete 'seos_facebook_description'
wp option delete 'seos_facebook_id'
wp option delete 'seos_locale'
wp option delete 'seos_locale_alternate'
wp option delete 'seos_locale_alternate1'
wp option delete 'seos_graph_url'
wp option delete 'seos_geo_region'
wp option delete 'seos_geo_placename'
wp option delete 'seos_geo_position'
wp option delete 'seos_icbm'
wp option delete 'seos_twitter_card'
wp option delete 'seos_twitter_site'
wp option delete 'seos_twitter_title'
wp option delete 'seos_twitter_description'
wp option delete 'seos_twitter_image'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seos_sticky_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seos_sticky_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seos_sticky_color_sheme%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seos_sticky_color_text%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seos_note_datepicker_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seos_note_name_%'"
wp option delete 'seos_sticky_1'
wp option delete 'seos_sticky_url_1'
wp option delete 'seos_publisher'
wp option delete 'seos_alexa_verification'
wp option delete 'seos_pinterest_verification'

