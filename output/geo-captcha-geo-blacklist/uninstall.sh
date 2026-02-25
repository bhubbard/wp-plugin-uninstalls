#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geo_capblack_black'
wp option delete 'geo_capblack_legal'
wp option delete 'geo_capblack_comments'
wp option delete 'geo_capblack_registration'
wp option delete 'geo_capblack_log_ips'
wp option delete 'geo_capblack_blocked_spam'
wp option delete 'geo_capblack_not_whitelisted_comments'
wp option delete 'geo_capblack_whitelisted_comments'
wp option delete 'geo_capblack_registered_comments'
wp option delete 'geo_capblack_manuell_spam'
wp option delete 'geo_capblack_whitelisted_spam'
wp option delete 'recently_activated'

