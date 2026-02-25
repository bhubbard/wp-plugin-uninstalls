#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_text_regex'
wp option delete 'hide_text_email'
wp option delete 'hide_text_url'
wp option delete 'hide_text_replace_text'
wp option delete 'hide_text_admin_hidden'
wp option delete 'hide_text_phone_number'
wp option delete 'promo_hunt_title'
wp option delete 'promo_hunt_message'
wp option delete 'promo_image'

