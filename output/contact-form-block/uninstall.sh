#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcfb_captcha_key'
wp option delete 'mcfb_captcha_secret_key'
wp option delete 'mcfb_redirect_url'
wp option delete 'mcfb_phone_field'
wp option delete 'mcfb_success_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

