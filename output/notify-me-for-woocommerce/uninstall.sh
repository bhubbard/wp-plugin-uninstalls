#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nmfw_notifyme_redirect'
wp option delete 'nmfw_notifyme_connection'
wp option delete 'nmfw_notifyme_notice_dismissed'
wp option delete 'wp_notifyme_nmfw_auth'

