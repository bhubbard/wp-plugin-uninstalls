#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ad_facebook_link'
wp option delete 'ad_twitter_link'
wp option delete 'ad_skype_link'
wp option delete 'ad_google_link'
wp option delete 'ad_instagram_link'
wp option delete 'ad_contact_number'
wp option delete 'ad_address'
wp option delete 'ad_map'
wp option delete 'image_location'
wp option delete 'footer_image_location'
wp option delete 'ad_footer_desc'

