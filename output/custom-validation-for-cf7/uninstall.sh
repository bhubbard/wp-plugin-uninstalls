#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7vp_enable_phone'
wp option delete 'cf7vp_enable_email'
wp option delete 'cf7vp_enable_urlblock'
wp option delete 'cf7vp_enable_urlblock_all'
wp option delete 'cf7vp_phone_digits'
wp option delete 'cf7vp_phone_message'
wp option delete 'cf7vp_email_message'
wp option delete 'cf7vp_url_message'

